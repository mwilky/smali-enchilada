.class Lcom/android/keyguard/clock/OPTextClock$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OPTextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/OPTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/clock/OPTextClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/clock/OPTextClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/clock/OPTextClock$3;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/OPTextClock$3;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-static {v0}, Lcom/android/keyguard/clock/OPTextClock;->access$100(Lcom/android/keyguard/clock/OPTextClock;)V

    return-void
.end method
