.class Landroid/app/SystemServiceRegistry$48;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/hardware/SerialManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 587
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/hardware/SerialManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 590
    const-string/jumbo v0, "serial"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 591
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/SerialManager;

    invoke-static {v0}, Landroid/hardware/ISerialManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISerialManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/hardware/SerialManager;-><init>(Landroid/content/Context;Landroid/hardware/ISerialManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$48;->createService(Landroid/app/ContextImpl;)Landroid/hardware/SerialManager;

    move-result-object p1

    return-object p1
.end method
