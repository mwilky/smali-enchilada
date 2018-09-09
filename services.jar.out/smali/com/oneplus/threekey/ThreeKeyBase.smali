.class public Lcom/oneplus/threekey/ThreeKeyBase;
.super Ljava/lang/Object;
.source "ThreeKeyBase.java"

# interfaces
.implements Lcom/oneplus/threekey/ThreeKeyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final ACTION_THREE_KEY_EXTRA:Ljava/lang/String; = "switch_state"

.field public static final SWITCH_STATE_DOWN:I = 0x3

.field public static final SWITCH_STATE_MIDDLE:I = 0x2

.field public static final SWITCH_STATE_ON:I = 0x1

.field public static final SWITCH_STATE_UNINIT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ThreeKeyBase"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreeKeyMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mThreeKeyMode:I

    .line 24
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;-><init>(Lcom/oneplus/threekey/ThreeKeyBase;Lcom/oneplus/threekey/ThreeKeyBase$1;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyBase;->register()V

    .line 29
    return-void
.end method

.method private register()V
    .locals 6

    .line 69
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 72
    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 1
    .param p1, "switchState"    # I

    .line 36
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mThreeKeyMode:I

    .line 37
    iget v0, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mThreeKeyMode:I

    invoke-virtual {p0, v0}, Lcom/oneplus/threekey/ThreeKeyBase;->setSwitchState(I)V

    .line 38
    return-void
.end method

.method public isDown()Z
    .locals 2

    .line 33
    iget v0, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mThreeKeyMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMiddle()Z
    .locals 2

    .line 32
    iget v0, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mThreeKeyMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUp()Z
    .locals 2

    .line 31
    iget v0, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mThreeKeyMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 2

    .line 41
    const-string v0, "ThreeKeyBase"

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v0, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mThreeKeyMode:I

    invoke-virtual {p0, v0}, Lcom/oneplus/threekey/ThreeKeyBase;->init(I)V

    .line 43
    return-void
.end method

.method protected setDown()V
    .locals 0

    .line 66
    return-void
.end method

.method protected setMiddle()V
    .locals 0

    .line 65
    return-void
.end method

.method protected setSwitchState(I)V
    .locals 2
    .param p1, "switchState"    # I

    .line 46
    packed-switch p1, :pswitch_data_0

    .line 57
    const-string v0, "ThreeKeyBase"

    const-string/jumbo v1, "invalid switchState"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyBase;->setDown()V

    .line 55
    goto :goto_0

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyBase;->setMiddle()V

    .line 52
    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyBase;->setUp()V

    .line 49
    nop

    .line 60
    :goto_0
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyBase;->mThreeKeyMode:I

    .line 61
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setUp()V
    .locals 0

    .line 64
    return-void
.end method
