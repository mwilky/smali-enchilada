.class public Landroid/arch/lifecycle/ViewModelProviders;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 52
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 55
    return-object v0

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkApplication(Landroid/app/Activity;)Landroid/app/Application;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 43
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 47
    return-object v0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "factory"    # Landroid/arch/lifecycle/ViewModelProvider$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 101
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    .line 102
    .local v0, "application":Landroid/app/Application;
    if-nez p1, :cond_0

    .line 103
    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object p1

    .line 105
    :cond_0
    new-instance v1, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v1
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "factory"    # Landroid/arch/lifecycle/ViewModelProvider$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 122
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    .line 123
    .local v0, "application":Landroid/app/Application;
    if-nez p1, :cond_0

    .line 124
    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object p1

    .line 126
    :cond_0
    new-instance v1, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v1
.end method
