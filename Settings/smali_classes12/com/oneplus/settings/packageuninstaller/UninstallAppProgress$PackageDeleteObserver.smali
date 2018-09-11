.class Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;
    .param p2, "x1"    # Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$1;

    .line 311
    invoke-direct {p0, p1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .line 313
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-static {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->access$200(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 315
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-static {v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->access$200(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    return-void
.end method
