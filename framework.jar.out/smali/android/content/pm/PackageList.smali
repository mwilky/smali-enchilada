.class public Landroid/content/pm/PackageList;
.super Ljava/lang/Object;
.source "PackageList.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final mPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManagerInternal$PackageListObserver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageList;->mPackageNames:Ljava/util/List;

    iput-object p2, p0, Landroid/content/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    return-void
.end method

.method public getPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageList;->mPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-interface {v0, p1}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageAdded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-interface {v0, p1}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageRemoved(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
