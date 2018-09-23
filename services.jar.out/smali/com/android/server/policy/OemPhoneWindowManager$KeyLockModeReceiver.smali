.class Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyLockModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KeyLockMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    move-result-object v1

    aget-object v1, v1, v0

    sput-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    if-eqz v1, :cond_0

    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyLockModeReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$13;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v2, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v2}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$200(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
