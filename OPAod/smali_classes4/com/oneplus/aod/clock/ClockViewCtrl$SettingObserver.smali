.class final Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ClockViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/clock/ClockViewCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/clock/ClockViewCtrl;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-static {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->access$000(Lcom/oneplus/aod/clock/ClockViewCtrl;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-static {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->access$100(Lcom/oneplus/aod/clock/ClockViewCtrl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-static {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->access$200(Lcom/oneplus/aod/clock/ClockViewCtrl;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-static {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->access$300(Lcom/oneplus/aod/clock/ClockViewCtrl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/oneplus/aod/clock/ClockViewCtrl$SettingObserver;->this$0:Lcom/oneplus/aod/clock/ClockViewCtrl;

    invoke-static {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->access$400(Lcom/oneplus/aod/clock/ClockViewCtrl;)V

    .line 126
    :cond_2
    :goto_0
    return-void
.end method
