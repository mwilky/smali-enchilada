.class Landroid/app/SystemServiceRegistry$83;
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
        "Lcom/oneplus/three_key/ThreeKeyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 926
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/oneplus/three_key/ThreeKeyManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 929
    new-instance v0, Lcom/oneplus/three_key/ThreeKeyManager;

    invoke-direct {v0, p1}, Lcom/oneplus/three_key/ThreeKeyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 926
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$83;->createService(Landroid/app/ContextImpl;)Lcom/oneplus/three_key/ThreeKeyManager;

    move-result-object p1

    return-object p1
.end method
