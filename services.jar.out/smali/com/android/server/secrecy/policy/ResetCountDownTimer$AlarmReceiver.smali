.class public Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResetCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/policy/ResetCountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlarmReceiver"
.end annotation


# instance fields
.field private final mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

.field final synthetic this$0:Lcom/android/server/secrecy/policy/ResetCountDownTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/policy/ResetCountDownTimer;Lcom/android/server/secrecy/policy/ResetCountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;->this$0:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " PolicyFactor onReceive, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/secrecy/policy/ResetCountDownTimer$AlarmReceiver;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    invoke-virtual {v1}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->getPolicyManager()Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/secrecy/policy/PolicyManager;->onCountDownTimerExpired()V

    return-void
.end method
