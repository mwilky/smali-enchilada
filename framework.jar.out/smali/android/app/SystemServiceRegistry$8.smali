.class Landroid/app/SystemServiceRegistry$8;
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
        "Landroid/bluetooth/BluetoothManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/bluetooth/BluetoothManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 258
    new-instance v0, Landroid/bluetooth/BluetoothManager;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$8;->createService(Landroid/app/ContextImpl;)Landroid/bluetooth/BluetoothManager;

    move-result-object p1

    return-object p1
.end method
