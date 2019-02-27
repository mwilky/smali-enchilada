.class public final Landroid/hardware/radio/V1_0/RadioError;
.super Ljava/lang/Object;
.source "RadioError.java"


# static fields
.field public static final ABORTED:I = 0x41

.field public static final CANCELLED:I = 0x7

.field public static final DEVICE_IN_USE:I = 0x40

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x14

.field public static final DIAL_MODIFIED_TO_SS:I = 0x13

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x12

.field public static final EMPTY_RECORD:I = 0x37

.field public static final ENCODING_ERR:I = 0x39

.field public static final FDN_CHECK_FAILURE:I = 0xe

.field public static final GENERIC_FAILURE:I = 0x2

.field public static final ILLEGAL_SIM_OR_ME:I = 0xf

.field public static final INTERNAL_ERR:I = 0x26

.field public static final INVALID_ARGUMENTS:I = 0x2c

.field public static final INVALID_CALL_ID:I = 0x2f

.field public static final INVALID_MODEM_STATE:I = 0x2e

.field public static final INVALID_RESPONSE:I = 0x42

.field public static final INVALID_SIM_STATE:I = 0x2d

.field public static final INVALID_SMSC_ADDRESS:I = 0x3a

.field public static final INVALID_SMS_FORMAT:I = 0x38

.field public static final INVALID_STATE:I = 0x29

.field public static final LCE_NOT_SUPPORTED:I = 0x24

.field public static final MISSING_RESOURCE:I = 0x10

.field public static final MODEM_ERR:I = 0x28

.field public static final MODE_NOT_SUPPORTED:I = 0xd

.field public static final NETWORK_ERR:I = 0x31

.field public static final NETWORK_NOT_READY:I = 0x3c

.field public static final NETWORK_REJECT:I = 0x35

.field public static final NONE:I = 0x0

.field public static final NOT_PROVISIONED:I = 0x3d

.field public static final NO_MEMORY:I = 0x25

.field public static final NO_NETWORK_FOUND:I = 0x3f

.field public static final NO_RESOURCES:I = 0x2a

.field public static final NO_SMS_TO_ACK:I = 0x30

.field public static final NO_SUBSCRIPTION:I = 0x3e

.field public static final NO_SUCH_ELEMENT:I = 0x11

.field public static final NO_SUCH_ENTRY:I = 0x3b

.field public static final OEM_ERROR_1:I = 0x1f5

.field public static final OEM_ERROR_10:I = 0x1fe

.field public static final OEM_ERROR_11:I = 0x1ff

.field public static final OEM_ERROR_12:I = 0x200

.field public static final OEM_ERROR_13:I = 0x201

.field public static final OEM_ERROR_14:I = 0x202

.field public static final OEM_ERROR_15:I = 0x203

.field public static final OEM_ERROR_16:I = 0x204

.field public static final OEM_ERROR_17:I = 0x205

.field public static final OEM_ERROR_18:I = 0x206

.field public static final OEM_ERROR_19:I = 0x207

.field public static final OEM_ERROR_2:I = 0x1f6

.field public static final OEM_ERROR_20:I = 0x208

.field public static final OEM_ERROR_21:I = 0x209

.field public static final OEM_ERROR_22:I = 0x20a

.field public static final OEM_ERROR_23:I = 0x20b

.field public static final OEM_ERROR_24:I = 0x20c

.field public static final OEM_ERROR_25:I = 0x20d

.field public static final OEM_ERROR_3:I = 0x1f7

.field public static final OEM_ERROR_4:I = 0x1f8

.field public static final OEM_ERROR_5:I = 0x1f9

.field public static final OEM_ERROR_6:I = 0x1fa

.field public static final OEM_ERROR_7:I = 0x1fb

.field public static final OEM_ERROR_8:I = 0x1fc

.field public static final OEM_ERROR_9:I = 0x1fd

.field public static final OPERATION_NOT_ALLOWED:I = 0x36

.field public static final OP_NOT_ALLOWED_BEFORE_REG_TO_NW:I = 0x9

.field public static final OP_NOT_ALLOWED_DURING_VOICE_CALL:I = 0x8

.field public static final PASSWORD_INCORRECT:I = 0x3

.field public static final RADIO_NOT_AVAILABLE:I = 0x1

.field public static final REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final REQUEST_RATE_LIMITED:I = 0x32

.field public static final SIM_ABSENT:I = 0xb

.field public static final SIM_BUSY:I = 0x33

.field public static final SIM_ERR:I = 0x2b

.field public static final SIM_FULL:I = 0x34

.field public static final SIM_PIN2:I = 0x4

.field public static final SIM_PUK2:I = 0x5

.field public static final SMS_SEND_FAIL_RETRY:I = 0xa

.field public static final SS_MODIFIED_TO_DIAL:I = 0x18

.field public static final SS_MODIFIED_TO_SS:I = 0x1b

.field public static final SS_MODIFIED_TO_USSD:I = 0x19

.field public static final SUBSCRIPTION_NOT_AVAILABLE:I = 0xc

.field public static final SUBSCRIPTION_NOT_SUPPORTED:I = 0x1a

.field public static final SYSTEM_ERR:I = 0x27

.field public static final USSD_MODIFIED_TO_DIAL:I = 0x15

.field public static final USSD_MODIFIED_TO_SS:I = 0x16

.field public static final USSD_MODIFIED_TO_USSD:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "RADIO_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "GENERIC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "PASSWORD_INCORRECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v2, "SIM_PIN2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const-string v2, "SIM_PUK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    const-string v2, "REQUEST_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    const-string v2, "CANCELLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    const-string v2, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    const-string v2, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    const-string v2, "SMS_SEND_FAIL_RETRY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    const-string v2, "SIM_ABSENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xb

    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    const-string v2, "SUBSCRIPTION_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    const-string v2, "MODE_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xd

    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    const-string v2, "FDN_CHECK_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xe

    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    const-string v2, "ILLEGAL_SIM_OR_ME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xf

    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    const-string v2, "MISSING_RESOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    const-string v2, "NO_SUCH_ELEMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x11

    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    const-string v2, "DIAL_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x12

    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    const-string v2, "DIAL_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x13

    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    const-string v2, "DIAL_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x14

    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    const-string v2, "USSD_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x15

    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    const-string v2, "USSD_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x16

    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    const-string v2, "USSD_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x17

    :cond_16
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_17

    const-string v2, "SS_MODIFIED_TO_DIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x18

    :cond_17
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_18

    const-string v2, "SS_MODIFIED_TO_USSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x19

    :cond_18
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    const-string v2, "SUBSCRIPTION_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1a

    :cond_19
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1a

    const-string v2, "SS_MODIFIED_TO_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1b

    :cond_1a
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1b

    const-string v2, "LCE_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x24

    :cond_1b
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1c

    const-string v2, "NO_MEMORY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x25

    :cond_1c
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1d

    const-string v2, "INTERNAL_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x26

    :cond_1d
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_1e

    const-string v2, "SYSTEM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x27

    :cond_1e
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1f

    const-string v2, "MODEM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x28

    :cond_1f
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_20

    const-string v2, "INVALID_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x29

    :cond_20
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_21

    const-string v2, "NO_RESOURCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2a

    :cond_21
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_22

    const-string v2, "SIM_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2b

    :cond_22
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_23

    const-string v2, "INVALID_ARGUMENTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2c

    :cond_23
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_24

    const-string v2, "INVALID_SIM_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2d

    :cond_24
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_25

    const-string v2, "INVALID_MODEM_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2e

    :cond_25
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_26

    const-string v2, "INVALID_CALL_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2f

    :cond_26
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_27

    const-string v2, "NO_SMS_TO_ACK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x30

    :cond_27
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_28

    const-string v2, "NETWORK_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x31

    :cond_28
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_29

    const-string v2, "REQUEST_RATE_LIMITED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x32

    :cond_29
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2a

    const-string v2, "SIM_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x33

    :cond_2a
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_2b

    const-string v2, "SIM_FULL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x34

    :cond_2b
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2c

    const-string v2, "NETWORK_REJECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x35

    :cond_2c
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_2d

    const-string v2, "OPERATION_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x36

    :cond_2d
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_2e

    const-string v2, "EMPTY_RECORD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x37

    :cond_2e
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_2f

    const-string v2, "INVALID_SMS_FORMAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x38

    :cond_2f
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_30

    const-string v2, "ENCODING_ERR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x39

    :cond_30
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_31

    const-string v2, "INVALID_SMSC_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3a

    :cond_31
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_32

    const-string v2, "NO_SUCH_ENTRY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3b

    :cond_32
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_33

    const-string v2, "NETWORK_NOT_READY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3c

    :cond_33
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_34

    const-string v2, "NOT_PROVISIONED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3d

    :cond_34
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_35

    const-string v2, "NO_SUBSCRIPTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3e

    :cond_35
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_36

    const-string v2, "NO_NETWORK_FOUND"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3f

    :cond_36
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_37

    const-string v2, "DEVICE_IN_USE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_37
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_38

    const-string v2, "ABORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x41

    :cond_38
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_39

    const-string v2, "INVALID_RESPONSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x42

    :cond_39
    and-int/lit16 v2, p0, 0x1f5

    const/16 v3, 0x1f5

    if-ne v2, v3, :cond_3a

    const-string v2, "OEM_ERROR_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1f5

    :cond_3a
    and-int/lit16 v2, p0, 0x1f6

    const/16 v3, 0x1f6

    if-ne v2, v3, :cond_3b

    const-string v2, "OEM_ERROR_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1f6

    :cond_3b
    and-int/lit16 v2, p0, 0x1f7

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_3c

    const-string v2, "OEM_ERROR_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1f7

    :cond_3c
    and-int/lit16 v2, p0, 0x1f8

    const/16 v3, 0x1f8

    if-ne v2, v3, :cond_3d

    const-string v2, "OEM_ERROR_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1f8

    :cond_3d
    and-int/lit16 v2, p0, 0x1f9

    const/16 v3, 0x1f9

    if-ne v2, v3, :cond_3e

    const-string v2, "OEM_ERROR_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1f9

    :cond_3e
    and-int/lit16 v2, p0, 0x1fa

    const/16 v3, 0x1fa

    if-ne v2, v3, :cond_3f

    const-string v2, "OEM_ERROR_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1fa

    :cond_3f
    and-int/lit16 v2, p0, 0x1fb

    const/16 v3, 0x1fb

    if-ne v2, v3, :cond_40

    const-string v2, "OEM_ERROR_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1fb

    :cond_40
    and-int/lit16 v2, p0, 0x1fc

    const/16 v3, 0x1fc

    if-ne v2, v3, :cond_41

    const-string v2, "OEM_ERROR_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1fc

    :cond_41
    and-int/lit16 v2, p0, 0x1fd

    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_42

    const-string v2, "OEM_ERROR_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1fd

    :cond_42
    and-int/lit16 v2, p0, 0x1fe

    const/16 v3, 0x1fe

    if-ne v2, v3, :cond_43

    const-string v2, "OEM_ERROR_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1fe

    :cond_43
    and-int/lit16 v2, p0, 0x1ff

    const/16 v3, 0x1ff

    if-ne v2, v3, :cond_44

    const-string v2, "OEM_ERROR_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1ff

    :cond_44
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_45

    const-string v2, "OEM_ERROR_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x200

    :cond_45
    and-int/lit16 v2, p0, 0x201

    const/16 v3, 0x201

    if-ne v2, v3, :cond_46

    const-string v2, "OEM_ERROR_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x201

    :cond_46
    and-int/lit16 v2, p0, 0x202

    const/16 v3, 0x202

    if-ne v2, v3, :cond_47

    const-string v2, "OEM_ERROR_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x202

    :cond_47
    and-int/lit16 v2, p0, 0x203

    const/16 v3, 0x203

    if-ne v2, v3, :cond_48

    const-string v2, "OEM_ERROR_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x203

    :cond_48
    and-int/lit16 v2, p0, 0x204

    const/16 v3, 0x204

    if-ne v2, v3, :cond_49

    const-string v2, "OEM_ERROR_16"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x204

    :cond_49
    and-int/lit16 v2, p0, 0x205

    const/16 v3, 0x205

    if-ne v2, v3, :cond_4a

    const-string v2, "OEM_ERROR_17"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x205

    :cond_4a
    and-int/lit16 v2, p0, 0x206

    const/16 v3, 0x206

    if-ne v2, v3, :cond_4b

    const-string v2, "OEM_ERROR_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x206

    :cond_4b
    and-int/lit16 v2, p0, 0x207

    const/16 v3, 0x207

    if-ne v2, v3, :cond_4c

    const-string v2, "OEM_ERROR_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x207

    :cond_4c
    and-int/lit16 v2, p0, 0x208

    const/16 v3, 0x208

    if-ne v2, v3, :cond_4d

    const-string v2, "OEM_ERROR_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x208

    :cond_4d
    and-int/lit16 v2, p0, 0x209

    const/16 v3, 0x209

    if-ne v2, v3, :cond_4e

    const-string v2, "OEM_ERROR_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x209

    :cond_4e
    and-int/lit16 v2, p0, 0x20a

    const/16 v3, 0x20a

    if-ne v2, v3, :cond_4f

    const-string v2, "OEM_ERROR_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x20a

    :cond_4f
    and-int/lit16 v2, p0, 0x20b

    const/16 v3, 0x20b

    if-ne v2, v3, :cond_50

    const-string v2, "OEM_ERROR_23"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x20b

    :cond_50
    and-int/lit16 v2, p0, 0x20c

    const/16 v3, 0x20c

    if-ne v2, v3, :cond_51

    const-string v2, "OEM_ERROR_24"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x20c

    :cond_51
    and-int/lit16 v2, p0, 0x20d

    const/16 v3, 0x20d

    if-ne v2, v3, :cond_52

    const-string v2, "OEM_ERROR_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x20d

    :cond_52
    if-eq p0, v1, :cond_53

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "NONE"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "RADIO_NOT_AVAILABLE"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "GENERIC_FAILURE"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "PASSWORD_INCORRECT"

    return-object v0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "SIM_PIN2"

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "SIM_PUK2"

    return-object v0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "REQUEST_NOT_SUPPORTED"

    return-object v0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string v0, "CANCELLED"

    return-object v0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string v0, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    return-object v0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string v0, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    return-object v0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string v0, "SMS_SEND_FAIL_RETRY"

    return-object v0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string v0, "SIM_ABSENT"

    return-object v0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string v0, "SUBSCRIPTION_NOT_AVAILABLE"

    return-object v0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string v0, "MODE_NOT_SUPPORTED"

    return-object v0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string v0, "FDN_CHECK_FAILURE"

    return-object v0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string v0, "ILLEGAL_SIM_OR_ME"

    return-object v0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string v0, "MISSING_RESOURCE"

    return-object v0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string v0, "NO_SUCH_ELEMENT"

    return-object v0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string v0, "USSD_MODIFIED_TO_DIAL"

    return-object v0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string v0, "USSD_MODIFIED_TO_SS"

    return-object v0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string v0, "USSD_MODIFIED_TO_USSD"

    return-object v0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    const-string v0, "SS_MODIFIED_TO_DIAL"

    return-object v0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    const-string v0, "SS_MODIFIED_TO_USSD"

    return-object v0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string v0, "SUBSCRIPTION_NOT_SUPPORTED"

    return-object v0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    const-string v0, "SS_MODIFIED_TO_SS"

    return-object v0

    :cond_1b
    const/16 v0, 0x24

    if-ne p0, v0, :cond_1c

    const-string v0, "LCE_NOT_SUPPORTED"

    return-object v0

    :cond_1c
    const/16 v0, 0x25

    if-ne p0, v0, :cond_1d

    const-string v0, "NO_MEMORY"

    return-object v0

    :cond_1d
    const/16 v0, 0x26

    if-ne p0, v0, :cond_1e

    const-string v0, "INTERNAL_ERR"

    return-object v0

    :cond_1e
    const/16 v0, 0x27

    if-ne p0, v0, :cond_1f

    const-string v0, "SYSTEM_ERR"

    return-object v0

    :cond_1f
    const/16 v0, 0x28

    if-ne p0, v0, :cond_20

    const-string v0, "MODEM_ERR"

    return-object v0

    :cond_20
    const/16 v0, 0x29

    if-ne p0, v0, :cond_21

    const-string v0, "INVALID_STATE"

    return-object v0

    :cond_21
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_22

    const-string v0, "NO_RESOURCES"

    return-object v0

    :cond_22
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_23

    const-string v0, "SIM_ERR"

    return-object v0

    :cond_23
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_24

    const-string v0, "INVALID_ARGUMENTS"

    return-object v0

    :cond_24
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_25

    const-string v0, "INVALID_SIM_STATE"

    return-object v0

    :cond_25
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_26

    const-string v0, "INVALID_MODEM_STATE"

    return-object v0

    :cond_26
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_27

    const-string v0, "INVALID_CALL_ID"

    return-object v0

    :cond_27
    const/16 v0, 0x30

    if-ne p0, v0, :cond_28

    const-string v0, "NO_SMS_TO_ACK"

    return-object v0

    :cond_28
    const/16 v0, 0x31

    if-ne p0, v0, :cond_29

    const-string v0, "NETWORK_ERR"

    return-object v0

    :cond_29
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2a

    const-string v0, "REQUEST_RATE_LIMITED"

    return-object v0

    :cond_2a
    const/16 v0, 0x33

    if-ne p0, v0, :cond_2b

    const-string v0, "SIM_BUSY"

    return-object v0

    :cond_2b
    const/16 v0, 0x34

    if-ne p0, v0, :cond_2c

    const-string v0, "SIM_FULL"

    return-object v0

    :cond_2c
    const/16 v0, 0x35

    if-ne p0, v0, :cond_2d

    const-string v0, "NETWORK_REJECT"

    return-object v0

    :cond_2d
    const/16 v0, 0x36

    if-ne p0, v0, :cond_2e

    const-string v0, "OPERATION_NOT_ALLOWED"

    return-object v0

    :cond_2e
    const/16 v0, 0x37

    if-ne p0, v0, :cond_2f

    const-string v0, "EMPTY_RECORD"

    return-object v0

    :cond_2f
    const/16 v0, 0x38

    if-ne p0, v0, :cond_30

    const-string v0, "INVALID_SMS_FORMAT"

    return-object v0

    :cond_30
    const/16 v0, 0x39

    if-ne p0, v0, :cond_31

    const-string v0, "ENCODING_ERR"

    return-object v0

    :cond_31
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_32

    const-string v0, "INVALID_SMSC_ADDRESS"

    return-object v0

    :cond_32
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_33

    const-string v0, "NO_SUCH_ENTRY"

    return-object v0

    :cond_33
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_34

    const-string v0, "NETWORK_NOT_READY"

    return-object v0

    :cond_34
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_35

    const-string v0, "NOT_PROVISIONED"

    return-object v0

    :cond_35
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_36

    const-string v0, "NO_SUBSCRIPTION"

    return-object v0

    :cond_36
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_37

    const-string v0, "NO_NETWORK_FOUND"

    return-object v0

    :cond_37
    const/16 v0, 0x40

    if-ne p0, v0, :cond_38

    const-string v0, "DEVICE_IN_USE"

    return-object v0

    :cond_38
    const/16 v0, 0x41

    if-ne p0, v0, :cond_39

    const-string v0, "ABORTED"

    return-object v0

    :cond_39
    const/16 v0, 0x42

    if-ne p0, v0, :cond_3a

    const-string v0, "INVALID_RESPONSE"

    return-object v0

    :cond_3a
    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_3b

    const-string v0, "OEM_ERROR_1"

    return-object v0

    :cond_3b
    const/16 v0, 0x1f6

    if-ne p0, v0, :cond_3c

    const-string v0, "OEM_ERROR_2"

    return-object v0

    :cond_3c
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_3d

    const-string v0, "OEM_ERROR_3"

    return-object v0

    :cond_3d
    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_3e

    const-string v0, "OEM_ERROR_4"

    return-object v0

    :cond_3e
    const/16 v0, 0x1f9

    if-ne p0, v0, :cond_3f

    const-string v0, "OEM_ERROR_5"

    return-object v0

    :cond_3f
    const/16 v0, 0x1fa

    if-ne p0, v0, :cond_40

    const-string v0, "OEM_ERROR_6"

    return-object v0

    :cond_40
    const/16 v0, 0x1fb

    if-ne p0, v0, :cond_41

    const-string v0, "OEM_ERROR_7"

    return-object v0

    :cond_41
    const/16 v0, 0x1fc

    if-ne p0, v0, :cond_42

    const-string v0, "OEM_ERROR_8"

    return-object v0

    :cond_42
    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_43

    const-string v0, "OEM_ERROR_9"

    return-object v0

    :cond_43
    const/16 v0, 0x1fe

    if-ne p0, v0, :cond_44

    const-string v0, "OEM_ERROR_10"

    return-object v0

    :cond_44
    const/16 v0, 0x1ff

    if-ne p0, v0, :cond_45

    const-string v0, "OEM_ERROR_11"

    return-object v0

    :cond_45
    const/16 v0, 0x200

    if-ne p0, v0, :cond_46

    const-string v0, "OEM_ERROR_12"

    return-object v0

    :cond_46
    const/16 v0, 0x201

    if-ne p0, v0, :cond_47

    const-string v0, "OEM_ERROR_13"

    return-object v0

    :cond_47
    const/16 v0, 0x202

    if-ne p0, v0, :cond_48

    const-string v0, "OEM_ERROR_14"

    return-object v0

    :cond_48
    const/16 v0, 0x203

    if-ne p0, v0, :cond_49

    const-string v0, "OEM_ERROR_15"

    return-object v0

    :cond_49
    const/16 v0, 0x204

    if-ne p0, v0, :cond_4a

    const-string v0, "OEM_ERROR_16"

    return-object v0

    :cond_4a
    const/16 v0, 0x205

    if-ne p0, v0, :cond_4b

    const-string v0, "OEM_ERROR_17"

    return-object v0

    :cond_4b
    const/16 v0, 0x206

    if-ne p0, v0, :cond_4c

    const-string v0, "OEM_ERROR_18"

    return-object v0

    :cond_4c
    const/16 v0, 0x207

    if-ne p0, v0, :cond_4d

    const-string v0, "OEM_ERROR_19"

    return-object v0

    :cond_4d
    const/16 v0, 0x208

    if-ne p0, v0, :cond_4e

    const-string v0, "OEM_ERROR_20"

    return-object v0

    :cond_4e
    const/16 v0, 0x209

    if-ne p0, v0, :cond_4f

    const-string v0, "OEM_ERROR_21"

    return-object v0

    :cond_4f
    const/16 v0, 0x20a

    if-ne p0, v0, :cond_50

    const-string v0, "OEM_ERROR_22"

    return-object v0

    :cond_50
    const/16 v0, 0x20b

    if-ne p0, v0, :cond_51

    const-string v0, "OEM_ERROR_23"

    return-object v0

    :cond_51
    const/16 v0, 0x20c

    if-ne p0, v0, :cond_52

    const-string v0, "OEM_ERROR_24"

    return-object v0

    :cond_52
    const/16 v0, 0x20d

    if-ne p0, v0, :cond_53

    const-string v0, "OEM_ERROR_25"

    return-object v0

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
