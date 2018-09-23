.class public Lcom/oneplus/server/OIMCMessage;
.super Ljava/lang/Object;
.source "OIMCMessage.java"


# static fields
.field static final APPLY_LOCAL_CONFIG:I = 0xcc

.field static final APPLY_ONLINE_CONFIG:I = 0xcd

.field static final BINDER_REMOTE_ACTION:I = 0xd7

.field static final CALLBACK_MESSAGE_START:I = 0x2711

.field static final DUMP_SYS_INFO:I = 0x2712

.field static final FLUSH:I = 0x2710

.field static final FUNC_CONFIG:I = 0x68

.field static final FUNC_CONFIG_BY_CMD:I = 0x69

.field static final GET_FUNC_STATUS:I = 0x2712

.field static final GET_SYS_INFO:I = 0x2711

.field static final INFO_ALL:I = 0x3f

.field static final INFO_FUNCTION_LIST:I = 0x2

.field static final INFO_MODE_LIST:I = 0x1

.field static final INFO_PENDING_FUNCS:I = 0x20

.field static final INFO_RULE_LIST:I = 0x4

.field static final INFO_RUNNING_FUNCS:I = 0x10

.field static final INFO_SYSTEM_MODE:I = 0x8

.field static final MODE_CONFIG:I = 0x4

.field static final MODE_ENTER:I = 0x1

.field static final MODE_EXIT:I = 0x2

.field static final MODE_SWITCH:I = 0x3

.field static final MODE_TRANSITION:I = 0x5

.field static final MSG_MAJOR_TYPE_MASK:I = 0x3fffffff

.field static final MSG_MAJOR_TYPE_OFFSET:I = 0x0

.field static final MSG_MODE_TYPE_MASK:I = 0x3

.field static final MSG_MODE_TYPE_OFFSET:I = 0x1e

.field static final QUEUE_MESSAGE_END:I = 0x2710

.field static final QUEUE_MESSAGE_START:I = 0x1

.field static final REGISTER_FUNCTION:I = 0xca

.field static final REGISTER_FUNCTION_EXT:I = 0xcb

.field static final REGISTER_MODE:I = 0xc9

.field static final RULE_ADD:I = 0x65

.field static final RULE_ADD_AS_USER:I = 0xd0

.field static final RULE_ADD_BY_CMD:I = 0xd3

.field static final RULE_ADD_FOR_ALL:I = 0xd5

.field static final RULE_REMOVE:I = 0x66

.field static final RULE_REMOVE_AS_USER:I = 0xd1

.field static final RULE_REMOVE_BY_CMD:I = 0xd4

.field static final RULE_REMOVE_FOR_ALL:I = 0xd6

.field static final RUN_RULE_FOR_ALL:I = 0xd9

.field static final SAVE_CONFIG:I = 0xd2

.field static final TEST_MODE_TYPE:I = 0x3

.field static final UNBINDER_REMOTE_ACTION:I = 0xd8

.field static final USER_REMOVED:I = 0xcf

.field static final USER_SWITCH:I = 0xce


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final composeMsg(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x0

    return v0
.end method

.method static final composeTMsg(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x0

    const/high16 v1, -0x40000000    # -2.0f

    or-int/2addr v0, v1

    return v0
.end method

.method static final getMajorType(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x0

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method static final getModeType(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1e

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method static final majorMsgString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2710

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string v0, "Undefined_Type"

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "RUN_RULE_FOR_ALL"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "UNBINDER_REMOTE_ACTION"

    goto :goto_0

    :pswitch_2
    const-string v0, "BINDER_REMOTE_ACTION"

    goto :goto_0

    :pswitch_3
    const-string v0, "RULE_REMOVE_FOR_ALL"

    goto :goto_0

    :pswitch_4
    const-string v0, "RULE_ADD_FOR_ALL"

    goto :goto_0

    :pswitch_5
    const-string v0, "RULE_REMOVE_BY_CMD"

    goto :goto_0

    :pswitch_6
    const-string v0, "RULE_ADD_BY_CMD"

    goto :goto_0

    :pswitch_7
    const-string v0, "SAVE_CONFIG"

    goto :goto_0

    :pswitch_8
    const-string v0, "RULE_REMOVE_AS_USER"

    goto :goto_0

    :pswitch_9
    const-string v0, "RULE_ADD_AS_USER"

    goto :goto_0

    :pswitch_a
    const-string v0, "USER_REMOVED"

    goto :goto_0

    :pswitch_b
    const-string v0, "USER_SWITCH"

    goto :goto_0

    :pswitch_c
    const-string v0, "APPLY_ONLINE_CONFIG"

    goto :goto_0

    :pswitch_d
    const-string v0, "APPLY_LOCAL_CONFIG"

    goto :goto_0

    :pswitch_e
    const-string v0, "REGISTER_FUNCTION_EXT"

    goto :goto_0

    :pswitch_f
    const-string v0, "REGISTER_FUNCTION"

    goto :goto_0

    :pswitch_10
    const-string v0, "REGISTER_MODE"

    goto :goto_0

    :pswitch_11
    const-string v0, "FUNC_CONFIG_BY_CMD"

    goto :goto_0

    :pswitch_12
    const-string v0, "FUNC_CONFIG"

    goto :goto_0

    :pswitch_13
    const-string v0, "RULE_REMOVE"

    goto :goto_0

    :pswitch_14
    const-string v0, "RULE_ADD"

    goto :goto_0

    :pswitch_15
    const-string v0, "MODE_TRANSITION"

    goto :goto_0

    :pswitch_16
    const-string v0, "MODE_CONFIG"

    goto :goto_0

    :pswitch_17
    const-string v0, "MODE_SWITCH"

    goto :goto_0

    :pswitch_18
    const-string v0, "MODE_EXIT"

    goto :goto_0

    :pswitch_19
    const-string v0, "MODE_ENTER"

    goto :goto_0

    :cond_0
    const-string v0, "FLUSH"

    nop

    :goto_0
    nop

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x68
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static final modeTypeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "TestModeMsg"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
