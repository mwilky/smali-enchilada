.class public Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.super Landroid/app/Activity;
.source "ObservableActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# instance fields
.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public bridge synthetic getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
