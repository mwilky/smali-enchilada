.class public abstract Landroid/hardware/hdmi/HdmiClient;
.super Ljava/lang/Object;
.source "HdmiClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiClient"


# instance fields
.field private mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    return-void
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiClient$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiClient$1;-><init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V

    return-object v0
.end method


# virtual methods
.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "getActiveSource threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getDeviceType()I
.end method

.method public sendKeyEvent(IZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendKeyEvent(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string/jumbo v2, "sendKeyEvent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public sendVendorCommand(I[BZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->sendVendorCommand(II[BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "failed to send vendor command: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/hardware/hdmi/IHdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "failed to set vendor command listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "listener was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
