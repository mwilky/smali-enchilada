.class public Landroid/arch/lifecycle/ViewModelStores;
.super Ljava/lang/Object;
.source "ViewModelStores.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;
    .locals 1
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;
    .locals 1
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method
