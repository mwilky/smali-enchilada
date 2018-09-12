.class final Lcom/oneplus/aod/VolumneController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VolumneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/VolumneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final DND_MODE_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/aod/VolumneController;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/VolumneController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    .line 124
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 114
    const-string p1, "three_Key_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 116
    const-string p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->DND_MODE_URI:Landroid/net/Uri;

    .line 125
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0}, Lcom/oneplus/aod/VolumneController;->access$600(Lcom/oneplus/aod/VolumneController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    return-void
.end method

.method public init()V
    .locals 4

    .line 130
    const-string v0, "VolumneController"

    const-string v1, "register db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0}, Lcom/oneplus/aod/VolumneController;->access$600(Lcom/oneplus/aod/VolumneController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->DND_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$500(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/VolumneController;->access$700(Lcom/oneplus/aod/VolumneController;I)V

    .line 133
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 141
    const-string v0, "VolumneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDNDModeChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->DND_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0}, Lcom/oneplus/aod/VolumneController;->access$500(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$SettingObserver;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0, p3}, Lcom/oneplus/aod/VolumneController;->access$700(Lcom/oneplus/aod/VolumneController;I)V

    .line 145
    :cond_0
    return-void
.end method
