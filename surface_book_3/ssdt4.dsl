/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt4.dat, Thu May 28 14:51:56 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000BA0 (2976)
 *     Revision         0x02
 *     Checksum         0x33
 *     OEM ID           "MSFT  "
 *     OEM Table ID     "xh_gc000"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181003 (538447875)
 */
DefinitionBlock ("", "SSDT", 2, "MSFT  ", "xh_gc000", 0x00000000)
{
    External (_SB_.PCI0.TXHC.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.TXHC.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.TXHC.RHUB.SS03, DeviceObj)
    External (_SB_.PCI0.TXHC.RHUB.SS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)
    External (_SB_.UBTC, DeviceObj)
    External (_SB_.UBTC.TPLD, MethodObj)    // 2 Arguments
    External (_SB_.UBTC.TUPC, MethodObj)    // 2 Arguments
    External (DBGU, IntObj)
    External (EBID, IntObj)
    External (UC00, IntObj)
    External (UC01, IntObj)
    External (UC02, IntObj)
    External (UDB0, MethodObj)    // 1 Arguments
    External (USTC, UnknownObj)

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (GPLD, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10){}
            })
            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
            REV = 0x02
            CreateField (DerefOf (PCKG [Zero]), 0x07, One, RGB)
            RGB = One
            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
            VISI = Arg0
            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
            GPOS = Arg1
            Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.GPLD.PCKG */
        }

        Method (SPLD, 3, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                }
            })
            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
            REV = 0x02
            CreateField (DerefOf (PCKG [Zero]), 0x07, One, RGB)
            RGB = One
            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
            VISI = Arg0
            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
            GPOS = Arg1
            CreateField (DerefOf (PCKG [Zero]), 0x60, 0x02, EJCT)
            EJCT = Arg2
            Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.SPLD.PCKG */
        }

        Method (SUPC, 2, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            If ((Arg0 != Zero))
            {
                PCKG [Zero] = 0xFF
            }

            PCKG [One] = Arg1
            Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.SUPC.PCKG */
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (SUPC (0xFF, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (One, One, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x02, Zero))
        }

        Device (PRT1)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0x09, 
                Zero, 
                Zero
            })
            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (SPLD (One, One, 0x03))
            }
        }

        Device (PRT2)
        {
            Name (_ADR, 0x02)  // _ADR: Address
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0xFF, 
                Zero, 
                Zero
            })
            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (SPLD (Zero, 0x02, Zero))
            }

            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (SPLD (Zero, One, Zero))
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (SUPC (0xFF, Zero))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (SPLD (One, 0x02, 0x03))
                }
            }

            Device (PRT3)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (SUPC (0xFF, Zero))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (SPLD (One, 0x03, 0x03))
                }
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (SUPC (0xFF, Zero))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x03, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x04, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x05, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS06)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x06, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x07, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x08, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS09)
    {
        Name (CNNT, Zero)
        If ((((EBID & 0x2000) >> 0x0D) == One))
        {
            CNNT = 0xFF
        }
        Else
        {
            CNNT = Zero
        }

        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (SUPC (CNNT, Zero))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x09, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS10)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x0A, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR1)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR2)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (SUPC (0xFF, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (One, One, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x02, Zero))
        }

        Device (PRT1)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0x09, 
                Zero, 
                Zero
            })
            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (SPLD (One, One, 0x03))
            }
        }

        Device (PRT2)
        {
            Name (_ADR, 0x02)  // _ADR: Address
            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
            {
                0xFF, 
                0xFF, 
                Zero, 
                Zero
            })
            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (SPLD (Zero, 0x02, Zero))
            }

            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    0xFF, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (SPLD (Zero, One, 0x03))
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (SUPC (0xFF, Zero))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (SPLD (One, 0x02, 0x03))
                }
            }

            Device (PRT3)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (SUPC (0xFF, Zero))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (SPLD (One, 0x03, 0x03))
                }
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (SUPC (0xFF, Zero))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x03, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x04, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS05)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x05, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS06)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (SPLD (Zero, 0x06, Zero))
        }
    }

    Scope (\_SB.PCI0.TXHC.RHUB.SS01)
    {
        UDB0 ("TXHC root port SS01")
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.TPLD (Zero, One))
        }
    }

    Scope (\_SB.PCI0.TXHC.RHUB.SS02)
    {
        UDB0 ("TXHC root port SS02")
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.TPLD (Zero, 0x02))
        }
    }

    Scope (\_SB.PCI0.TXHC.RHUB.SS03)
    {
        UDB0 ("TXHC root port SS03")
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.TPLD (Zero, 0x03))
        }
    }

    Scope (\_SB.PCI0.TXHC.RHUB.SS04)
    {
        UDB0 ("TXHC root port SS04")
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            0xFF, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.TPLD (Zero, 0x04))
        }
    }

    Scope (\_SB.UBTC)
    {
        Device (CR01)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {
                Return (TPLD (One, One))
            }

            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
            {
                Return (TUPC (One, 0x09))
            }
        }
    }
}

