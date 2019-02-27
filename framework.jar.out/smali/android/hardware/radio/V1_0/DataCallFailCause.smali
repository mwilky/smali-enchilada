.class public final Landroid/hardware/radio/V1_0/DataCallFailCause;
.super Ljava/lang/Object;
.source "DataCallFailCause.java"


# static fields
.field public static final ACTIVATION_REJECT_GGSN:I = 0x1e

.field public static final ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field public static final APN_TYPE_CONFLICT:I = 0x70

.field public static final AUTH_FAILURE_ON_EMERGENCY_CALL:I = 0x7a

.field public static final COMPANION_IFACE_IN_USE:I = 0x76

.field public static final CONDITIONAL_IE_ERROR:I = 0x64

.field public static final DATA_REGISTRATION_FAIL:I = -0x2

.field public static final EMERGENCY_IFACE_ONLY:I = 0x74

.field public static final EMM_ACCESS_BARRED:I = 0x73

.field public static final EMM_ACCESS_BARRED_INFINITE_RETRY:I = 0x79

.field public static final ERROR_UNSPECIFIED:I = 0xffff

.field public static final ESM_INFO_NOT_RECEIVED:I = 0x35

.field public static final FEATURE_NOT_SUPP:I = 0x28

.field public static final FILTER_SEMANTIC_ERROR:I = 0x2c

.field public static final FILTER_SYTAX_ERROR:I = 0x2d

.field public static final IFACE_AND_POL_FAMILY_MISMATCH:I = 0x78

.field public static final IFACE_MISMATCH:I = 0x75

.field public static final INSUFFICIENT_RESOURCES:I = 0x1a

.field public static final INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN:I = 0x72

.field public static final INVALID_MANDATORY_INFO:I = 0x60

.field public static final INVALID_PCSCF_ADDR:I = 0x71

.field public static final INVALID_TRANSACTION_ID:I = 0x51

.field public static final IP_ADDRESS_MISMATCH:I = 0x77

.field public static final MAX_ACTIVE_PDP_CONTEXT_REACHED:I = 0x41

.field public static final MESSAGE_INCORRECT_SEMANTIC:I = 0x5f

.field public static final MESSAGE_TYPE_UNSUPPORTED:I = 0x61

.field public static final MISSING_UKNOWN_APN:I = 0x1b

.field public static final MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE:I = 0x65

.field public static final MSG_TYPE_NONCOMPATIBLE_STATE:I = 0x62

.field public static final MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:I = 0x37

.field public static final NAS_SIGNALLING:I = 0xe

.field public static final NETWORK_FAILURE:I = 0x26

.field public static final NONE:I = 0x0

.field public static final NSAPI_IN_USE:I = 0x23

.field public static final OEM_DCFAILCAUSE_1:I = 0x1001

.field public static final OEM_DCFAILCAUSE_10:I = 0x100a

.field public static final OEM_DCFAILCAUSE_11:I = 0x100b

.field public static final OEM_DCFAILCAUSE_12:I = 0x100c

.field public static final OEM_DCFAILCAUSE_13:I = 0x100d

.field public static final OEM_DCFAILCAUSE_14:I = 0x100e

.field public static final OEM_DCFAILCAUSE_15:I = 0x100f

.field public static final OEM_DCFAILCAUSE_2:I = 0x1002

.field public static final OEM_DCFAILCAUSE_3:I = 0x1003

.field public static final OEM_DCFAILCAUSE_4:I = 0x1004

.field public static final OEM_DCFAILCAUSE_5:I = 0x1005

.field public static final OEM_DCFAILCAUSE_6:I = 0x1006

.field public static final OEM_DCFAILCAUSE_7:I = 0x1007

.field public static final OEM_DCFAILCAUSE_8:I = 0x1008

.field public static final OEM_DCFAILCAUSE_9:I = 0x1009

.field public static final ONLY_IPV4_ALLOWED:I = 0x32

.field public static final ONLY_IPV6_ALLOWED:I = 0x33

.field public static final ONLY_SINGLE_BEARER_ALLOWED:I = 0x34

.field public static final OPERATOR_BARRED:I = 0x8

.field public static final PDN_CONN_DOES_NOT_EXIST:I = 0x36

.field public static final PDP_WITHOUT_ACTIVE_TFT:I = 0x2e

.field public static final PREF_RADIO_TECH_CHANGED:I = -0x4

.field public static final PROTOCOL_ERRORS:I = 0x6f

.field public static final QOS_NOT_ACCEPTED:I = 0x25

.field public static final RADIO_POWER_OFF:I = -0x5

.field public static final REGULAR_DEACTIVATION:I = 0x24

.field public static final SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field public static final SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field public static final SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field public static final SIGNAL_LOST:I = -0x3

.field public static final TETHERED_CALL_ACTIVE:I = -0x6

.field public static final TFT_SEMANTIC_ERROR:I = 0x29

.field public static final TFT_SYTAX_ERROR:I = 0x2a

.field public static final UMTS_REACTIVATION_REQ:I = 0x27

.field public static final UNKNOWN_INFO_ELEMENT:I = 0x63

.field public static final UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field public static final UNKNOWN_PDP_CONTEXT:I = 0x2b

.field public static final UNSUPPORTED_APN_IN_CURRENT_PLMN:I = 0x42

.field public static final USER_AUTHENTICATION:I = 0x1d

.field public static final VOICE_REGISTRATION_FAIL:I = -0x1


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

    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const-string v2, "OPERATOR_BARRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_0
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    const-string v2, "NAS_SIGNALLING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xe

    :cond_1
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_2

    const-string v2, "INSUFFICIENT_RESOURCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1a

    :cond_2
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_3

    const-string v2, "MISSING_UKNOWN_APN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1b

    :cond_3
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_4

    const-string v2, "UNKNOWN_PDP_ADDRESS_TYPE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1c

    :cond_4
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_5

    const-string v2, "USER_AUTHENTICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1d

    :cond_5
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_6

    const-string v2, "ACTIVATION_REJECT_GGSN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1e

    :cond_6
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_7

    const-string v2, "ACTIVATION_REJECT_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1f

    :cond_7
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_8

    const-string v2, "SERVICE_OPTION_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    :cond_8
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_9

    const-string v2, "SERVICE_OPTION_NOT_SUBSCRIBED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x21

    :cond_9
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_a

    const-string v2, "SERVICE_OPTION_OUT_OF_ORDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x22

    :cond_a
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_b

    const-string v2, "NSAPI_IN_USE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x23

    :cond_b
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_c

    const-string v2, "REGULAR_DEACTIVATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x24

    :cond_c
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_d

    const-string v2, "QOS_NOT_ACCEPTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x25

    :cond_d
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_e

    const-string v2, "NETWORK_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x26

    :cond_e
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_f

    const-string v2, "UMTS_REACTIVATION_REQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x27

    :cond_f
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_10

    const-string v2, "FEATURE_NOT_SUPP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x28

    :cond_10
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_11

    const-string v2, "TFT_SEMANTIC_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x29

    :cond_11
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_12

    const-string v2, "TFT_SYTAX_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2a

    :cond_12
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_13

    const-string v2, "UNKNOWN_PDP_CONTEXT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2b

    :cond_13
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_14

    const-string v2, "FILTER_SEMANTIC_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2c

    :cond_14
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_15

    const-string v2, "FILTER_SYTAX_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2d

    :cond_15
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_16

    const-string v2, "PDP_WITHOUT_ACTIVE_TFT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2e

    :cond_16
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_17

    const-string v2, "ONLY_IPV4_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x32

    :cond_17
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_18

    const-string v2, "ONLY_IPV6_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x33

    :cond_18
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_19

    const-string v2, "ONLY_SINGLE_BEARER_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x34

    :cond_19
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_1a

    const-string v2, "ESM_INFO_NOT_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x35

    :cond_1a
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_1b

    const-string v2, "PDN_CONN_DOES_NOT_EXIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x36

    :cond_1b
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_1c

    const-string v2, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x37

    :cond_1c
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_1d

    const-string v2, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x41

    :cond_1d
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_1e

    const-string v2, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x42

    :cond_1e
    and-int/lit8 v2, p0, 0x51

    const/16 v3, 0x51

    if-ne v2, v3, :cond_1f

    const-string v2, "INVALID_TRANSACTION_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x51

    :cond_1f
    and-int/lit8 v2, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_20

    const-string v2, "MESSAGE_INCORRECT_SEMANTIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5f

    :cond_20
    and-int/lit8 v2, p0, 0x60

    const/16 v3, 0x60

    if-ne v2, v3, :cond_21

    const-string v2, "INVALID_MANDATORY_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x60

    :cond_21
    and-int/lit8 v2, p0, 0x61

    const/16 v3, 0x61

    if-ne v2, v3, :cond_22

    const-string v2, "MESSAGE_TYPE_UNSUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x61

    :cond_22
    and-int/lit8 v2, p0, 0x62

    const/16 v3, 0x62

    if-ne v2, v3, :cond_23

    const-string v2, "MSG_TYPE_NONCOMPATIBLE_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x62

    :cond_23
    and-int/lit8 v2, p0, 0x63

    const/16 v3, 0x63

    if-ne v2, v3, :cond_24

    const-string v2, "UNKNOWN_INFO_ELEMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x63

    :cond_24
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_25

    const-string v2, "CONDITIONAL_IE_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x64

    :cond_25
    and-int/lit8 v2, p0, 0x65

    const/16 v3, 0x65

    if-ne v2, v3, :cond_26

    const-string v2, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x65

    :cond_26
    and-int/lit8 v2, p0, 0x6f

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_27

    const-string v2, "PROTOCOL_ERRORS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6f

    :cond_27
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_28

    const-string v2, "APN_TYPE_CONFLICT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x70

    :cond_28
    and-int/lit8 v2, p0, 0x71

    const/16 v3, 0x71

    if-ne v2, v3, :cond_29

    const-string v2, "INVALID_PCSCF_ADDR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x71

    :cond_29
    and-int/lit8 v2, p0, 0x72

    const/16 v3, 0x72

    if-ne v2, v3, :cond_2a

    const-string v2, "INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x72

    :cond_2a
    and-int/lit8 v2, p0, 0x73

    const/16 v3, 0x73

    if-ne v2, v3, :cond_2b

    const-string v2, "EMM_ACCESS_BARRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x73

    :cond_2b
    and-int/lit8 v2, p0, 0x74

    const/16 v3, 0x74

    if-ne v2, v3, :cond_2c

    const-string v2, "EMERGENCY_IFACE_ONLY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x74

    :cond_2c
    and-int/lit8 v2, p0, 0x75

    const/16 v3, 0x75

    if-ne v2, v3, :cond_2d

    const-string v2, "IFACE_MISMATCH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x75

    :cond_2d
    and-int/lit8 v2, p0, 0x76

    const/16 v3, 0x76

    if-ne v2, v3, :cond_2e

    const-string v2, "COMPANION_IFACE_IN_USE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x76

    :cond_2e
    and-int/lit8 v2, p0, 0x77

    const/16 v3, 0x77

    if-ne v2, v3, :cond_2f

    const-string v2, "IP_ADDRESS_MISMATCH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x77

    :cond_2f
    and-int/lit8 v2, p0, 0x78

    const/16 v3, 0x78

    if-ne v2, v3, :cond_30

    const-string v2, "IFACE_AND_POL_FAMILY_MISMATCH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x78

    :cond_30
    and-int/lit8 v2, p0, 0x79

    const/16 v3, 0x79

    if-ne v2, v3, :cond_31

    const-string v2, "EMM_ACCESS_BARRED_INFINITE_RETRY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x79

    :cond_31
    and-int/lit8 v2, p0, 0x7a

    const/16 v3, 0x7a

    if-ne v2, v3, :cond_32

    const-string v2, "AUTH_FAILURE_ON_EMERGENCY_CALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7a

    :cond_32
    and-int/lit16 v2, p0, 0x1001

    const/16 v3, 0x1001

    if-ne v2, v3, :cond_33

    const-string v2, "OEM_DCFAILCAUSE_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1001

    :cond_33
    and-int/lit16 v2, p0, 0x1002

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_34

    const-string v2, "OEM_DCFAILCAUSE_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1002

    :cond_34
    and-int/lit16 v2, p0, 0x1003

    const/16 v3, 0x1003

    if-ne v2, v3, :cond_35

    const-string v2, "OEM_DCFAILCAUSE_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1003

    :cond_35
    and-int/lit16 v2, p0, 0x1004

    const/16 v3, 0x1004

    if-ne v2, v3, :cond_36

    const-string v2, "OEM_DCFAILCAUSE_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1004

    :cond_36
    and-int/lit16 v2, p0, 0x1005

    const/16 v3, 0x1005

    if-ne v2, v3, :cond_37

    const-string v2, "OEM_DCFAILCAUSE_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1005

    :cond_37
    and-int/lit16 v2, p0, 0x1006

    const/16 v3, 0x1006

    if-ne v2, v3, :cond_38

    const-string v2, "OEM_DCFAILCAUSE_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1006

    :cond_38
    and-int/lit16 v2, p0, 0x1007

    const/16 v3, 0x1007

    if-ne v2, v3, :cond_39

    const-string v2, "OEM_DCFAILCAUSE_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1007

    :cond_39
    and-int/lit16 v2, p0, 0x1008

    const/16 v3, 0x1008

    if-ne v2, v3, :cond_3a

    const-string v2, "OEM_DCFAILCAUSE_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1008

    :cond_3a
    and-int/lit16 v2, p0, 0x1009

    const/16 v3, 0x1009

    if-ne v2, v3, :cond_3b

    const-string v2, "OEM_DCFAILCAUSE_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1009

    :cond_3b
    and-int/lit16 v2, p0, 0x100a

    const/16 v3, 0x100a

    if-ne v2, v3, :cond_3c

    const-string v2, "OEM_DCFAILCAUSE_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100a

    :cond_3c
    and-int/lit16 v2, p0, 0x100b

    const/16 v3, 0x100b

    if-ne v2, v3, :cond_3d

    const-string v2, "OEM_DCFAILCAUSE_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100b

    :cond_3d
    and-int/lit16 v2, p0, 0x100c

    const/16 v3, 0x100c

    if-ne v2, v3, :cond_3e

    const-string v2, "OEM_DCFAILCAUSE_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100c

    :cond_3e
    and-int/lit16 v2, p0, 0x100d

    const/16 v3, 0x100d

    if-ne v2, v3, :cond_3f

    const-string v2, "OEM_DCFAILCAUSE_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100d

    :cond_3f
    and-int/lit16 v2, p0, 0x100e

    const/16 v3, 0x100e

    if-ne v2, v3, :cond_40

    const-string v2, "OEM_DCFAILCAUSE_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100e

    :cond_40
    and-int/lit16 v2, p0, 0x100f

    const/16 v3, 0x100f

    if-ne v2, v3, :cond_41

    const-string v2, "OEM_DCFAILCAUSE_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100f

    :cond_41
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_42

    const-string v2, "VOICE_REGISTRATION_FAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x1

    :cond_42
    and-int/lit8 v2, p0, -0x2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_43

    const-string v2, "DATA_REGISTRATION_FAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x2

    :cond_43
    and-int/lit8 v2, p0, -0x3

    const/4 v3, -0x3

    if-ne v2, v3, :cond_44

    const-string v2, "SIGNAL_LOST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x3

    :cond_44
    and-int/lit8 v2, p0, -0x4

    const/4 v3, -0x4

    if-ne v2, v3, :cond_45

    const-string v2, "PREF_RADIO_TECH_CHANGED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x4

    :cond_45
    and-int/lit8 v2, p0, -0x5

    const/4 v3, -0x5

    if-ne v2, v3, :cond_46

    const-string v2, "RADIO_POWER_OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x5

    :cond_46
    and-int/lit8 v2, p0, -0x6

    const/4 v3, -0x6

    if-ne v2, v3, :cond_47

    const-string v2, "TETHERED_CALL_ACTIVE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x6

    :cond_47
    const v2, 0xffff

    and-int/2addr v2, p0

    const v3, 0xffff

    if-ne v2, v3, :cond_48

    const-string v2, "ERROR_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0xffff

    or-int/2addr v1, v2

    :cond_48
    if-eq p0, v1, :cond_49

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

    :cond_49
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
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const-string v0, "OPERATOR_BARRED"

    return-object v0

    :cond_1
    const/16 v0, 0xe

    if-ne p0, v0, :cond_2

    const-string v0, "NAS_SIGNALLING"

    return-object v0

    :cond_2
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_3

    const-string v0, "INSUFFICIENT_RESOURCES"

    return-object v0

    :cond_3
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_4

    const-string v0, "MISSING_UKNOWN_APN"

    return-object v0

    :cond_4
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_5

    const-string v0, "UNKNOWN_PDP_ADDRESS_TYPE"

    return-object v0

    :cond_5
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_6

    const-string v0, "USER_AUTHENTICATION"

    return-object v0

    :cond_6
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_7

    const-string v0, "ACTIVATION_REJECT_GGSN"

    return-object v0

    :cond_7
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_8

    const-string v0, "ACTIVATION_REJECT_UNSPECIFIED"

    return-object v0

    :cond_8
    const/16 v0, 0x20

    if-ne p0, v0, :cond_9

    const-string v0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object v0

    :cond_9
    const/16 v0, 0x21

    if-ne p0, v0, :cond_a

    const-string v0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object v0

    :cond_a
    const/16 v0, 0x22

    if-ne p0, v0, :cond_b

    const-string v0, "SERVICE_OPTION_OUT_OF_ORDER"

    return-object v0

    :cond_b
    const/16 v0, 0x23

    if-ne p0, v0, :cond_c

    const-string v0, "NSAPI_IN_USE"

    return-object v0

    :cond_c
    const/16 v0, 0x24

    if-ne p0, v0, :cond_d

    const-string v0, "REGULAR_DEACTIVATION"

    return-object v0

    :cond_d
    const/16 v0, 0x25

    if-ne p0, v0, :cond_e

    const-string v0, "QOS_NOT_ACCEPTED"

    return-object v0

    :cond_e
    const/16 v0, 0x26

    if-ne p0, v0, :cond_f

    const-string v0, "NETWORK_FAILURE"

    return-object v0

    :cond_f
    const/16 v0, 0x27

    if-ne p0, v0, :cond_10

    const-string v0, "UMTS_REACTIVATION_REQ"

    return-object v0

    :cond_10
    const/16 v0, 0x28

    if-ne p0, v0, :cond_11

    const-string v0, "FEATURE_NOT_SUPP"

    return-object v0

    :cond_11
    const/16 v0, 0x29

    if-ne p0, v0, :cond_12

    const-string v0, "TFT_SEMANTIC_ERROR"

    return-object v0

    :cond_12
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_13

    const-string v0, "TFT_SYTAX_ERROR"

    return-object v0

    :cond_13
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_14

    const-string v0, "UNKNOWN_PDP_CONTEXT"

    return-object v0

    :cond_14
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_15

    const-string v0, "FILTER_SEMANTIC_ERROR"

    return-object v0

    :cond_15
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_16

    const-string v0, "FILTER_SYTAX_ERROR"

    return-object v0

    :cond_16
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_17

    const-string v0, "PDP_WITHOUT_ACTIVE_TFT"

    return-object v0

    :cond_17
    const/16 v0, 0x32

    if-ne p0, v0, :cond_18

    const-string v0, "ONLY_IPV4_ALLOWED"

    return-object v0

    :cond_18
    const/16 v0, 0x33

    if-ne p0, v0, :cond_19

    const-string v0, "ONLY_IPV6_ALLOWED"

    return-object v0

    :cond_19
    const/16 v0, 0x34

    if-ne p0, v0, :cond_1a

    const-string v0, "ONLY_SINGLE_BEARER_ALLOWED"

    return-object v0

    :cond_1a
    const/16 v0, 0x35

    if-ne p0, v0, :cond_1b

    const-string v0, "ESM_INFO_NOT_RECEIVED"

    return-object v0

    :cond_1b
    const/16 v0, 0x36

    if-ne p0, v0, :cond_1c

    const-string v0, "PDN_CONN_DOES_NOT_EXIST"

    return-object v0

    :cond_1c
    const/16 v0, 0x37

    if-ne p0, v0, :cond_1d

    const-string v0, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    return-object v0

    :cond_1d
    const/16 v0, 0x41

    if-ne p0, v0, :cond_1e

    const-string v0, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    return-object v0

    :cond_1e
    const/16 v0, 0x42

    if-ne p0, v0, :cond_1f

    const-string v0, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    return-object v0

    :cond_1f
    const/16 v0, 0x51

    if-ne p0, v0, :cond_20

    const-string v0, "INVALID_TRANSACTION_ID"

    return-object v0

    :cond_20
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_21

    const-string v0, "MESSAGE_INCORRECT_SEMANTIC"

    return-object v0

    :cond_21
    const/16 v0, 0x60

    if-ne p0, v0, :cond_22

    const-string v0, "INVALID_MANDATORY_INFO"

    return-object v0

    :cond_22
    const/16 v0, 0x61

    if-ne p0, v0, :cond_23

    const-string v0, "MESSAGE_TYPE_UNSUPPORTED"

    return-object v0

    :cond_23
    const/16 v0, 0x62

    if-ne p0, v0, :cond_24

    const-string v0, "MSG_TYPE_NONCOMPATIBLE_STATE"

    return-object v0

    :cond_24
    const/16 v0, 0x63

    if-ne p0, v0, :cond_25

    const-string v0, "UNKNOWN_INFO_ELEMENT"

    return-object v0

    :cond_25
    const/16 v0, 0x64

    if-ne p0, v0, :cond_26

    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    :cond_26
    const/16 v0, 0x65

    if-ne p0, v0, :cond_27

    const-string v0, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    return-object v0

    :cond_27
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_28

    const-string v0, "PROTOCOL_ERRORS"

    return-object v0

    :cond_28
    const/16 v0, 0x70

    if-ne p0, v0, :cond_29

    const-string v0, "APN_TYPE_CONFLICT"

    return-object v0

    :cond_29
    const/16 v0, 0x71

    if-ne p0, v0, :cond_2a

    const-string v0, "INVALID_PCSCF_ADDR"

    return-object v0

    :cond_2a
    const/16 v0, 0x72

    if-ne p0, v0, :cond_2b

    const-string v0, "INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN"

    return-object v0

    :cond_2b
    const/16 v0, 0x73

    if-ne p0, v0, :cond_2c

    const-string v0, "EMM_ACCESS_BARRED"

    return-object v0

    :cond_2c
    const/16 v0, 0x74

    if-ne p0, v0, :cond_2d

    const-string v0, "EMERGENCY_IFACE_ONLY"

    return-object v0

    :cond_2d
    const/16 v0, 0x75

    if-ne p0, v0, :cond_2e

    const-string v0, "IFACE_MISMATCH"

    return-object v0

    :cond_2e
    const/16 v0, 0x76

    if-ne p0, v0, :cond_2f

    const-string v0, "COMPANION_IFACE_IN_USE"

    return-object v0

    :cond_2f
    const/16 v0, 0x77

    if-ne p0, v0, :cond_30

    const-string v0, "IP_ADDRESS_MISMATCH"

    return-object v0

    :cond_30
    const/16 v0, 0x78

    if-ne p0, v0, :cond_31

    const-string v0, "IFACE_AND_POL_FAMILY_MISMATCH"

    return-object v0

    :cond_31
    const/16 v0, 0x79

    if-ne p0, v0, :cond_32

    const-string v0, "EMM_ACCESS_BARRED_INFINITE_RETRY"

    return-object v0

    :cond_32
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_33

    const-string v0, "AUTH_FAILURE_ON_EMERGENCY_CALL"

    return-object v0

    :cond_33
    const/16 v0, 0x1001

    if-ne p0, v0, :cond_34

    const-string v0, "OEM_DCFAILCAUSE_1"

    return-object v0

    :cond_34
    const/16 v0, 0x1002

    if-ne p0, v0, :cond_35

    const-string v0, "OEM_DCFAILCAUSE_2"

    return-object v0

    :cond_35
    const/16 v0, 0x1003

    if-ne p0, v0, :cond_36

    const-string v0, "OEM_DCFAILCAUSE_3"

    return-object v0

    :cond_36
    const/16 v0, 0x1004

    if-ne p0, v0, :cond_37

    const-string v0, "OEM_DCFAILCAUSE_4"

    return-object v0

    :cond_37
    const/16 v0, 0x1005

    if-ne p0, v0, :cond_38

    const-string v0, "OEM_DCFAILCAUSE_5"

    return-object v0

    :cond_38
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_39

    const-string v0, "OEM_DCFAILCAUSE_6"

    return-object v0

    :cond_39
    const/16 v0, 0x1007

    if-ne p0, v0, :cond_3a

    const-string v0, "OEM_DCFAILCAUSE_7"

    return-object v0

    :cond_3a
    const/16 v0, 0x1008

    if-ne p0, v0, :cond_3b

    const-string v0, "OEM_DCFAILCAUSE_8"

    return-object v0

    :cond_3b
    const/16 v0, 0x1009

    if-ne p0, v0, :cond_3c

    const-string v0, "OEM_DCFAILCAUSE_9"

    return-object v0

    :cond_3c
    const/16 v0, 0x100a

    if-ne p0, v0, :cond_3d

    const-string v0, "OEM_DCFAILCAUSE_10"

    return-object v0

    :cond_3d
    const/16 v0, 0x100b

    if-ne p0, v0, :cond_3e

    const-string v0, "OEM_DCFAILCAUSE_11"

    return-object v0

    :cond_3e
    const/16 v0, 0x100c

    if-ne p0, v0, :cond_3f

    const-string v0, "OEM_DCFAILCAUSE_12"

    return-object v0

    :cond_3f
    const/16 v0, 0x100d

    if-ne p0, v0, :cond_40

    const-string v0, "OEM_DCFAILCAUSE_13"

    return-object v0

    :cond_40
    const/16 v0, 0x100e

    if-ne p0, v0, :cond_41

    const-string v0, "OEM_DCFAILCAUSE_14"

    return-object v0

    :cond_41
    const/16 v0, 0x100f

    if-ne p0, v0, :cond_42

    const-string v0, "OEM_DCFAILCAUSE_15"

    return-object v0

    :cond_42
    const/4 v0, -0x1

    if-ne p0, v0, :cond_43

    const-string v0, "VOICE_REGISTRATION_FAIL"

    return-object v0

    :cond_43
    const/4 v0, -0x2

    if-ne p0, v0, :cond_44

    const-string v0, "DATA_REGISTRATION_FAIL"

    return-object v0

    :cond_44
    const/4 v0, -0x3

    if-ne p0, v0, :cond_45

    const-string v0, "SIGNAL_LOST"

    return-object v0

    :cond_45
    const/4 v0, -0x4

    if-ne p0, v0, :cond_46

    const-string v0, "PREF_RADIO_TECH_CHANGED"

    return-object v0

    :cond_46
    const/4 v0, -0x5

    if-ne p0, v0, :cond_47

    const-string v0, "RADIO_POWER_OFF"

    return-object v0

    :cond_47
    const/4 v0, -0x6

    if-ne p0, v0, :cond_48

    const-string v0, "TETHERED_CALL_ACTIVE"

    return-object v0

    :cond_48
    const v0, 0xffff

    if-ne p0, v0, :cond_49

    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    :cond_49
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
