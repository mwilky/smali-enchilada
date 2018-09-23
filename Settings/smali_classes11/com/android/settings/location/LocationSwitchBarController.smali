.class public Lcom/android/settings/location/LocationSwitchBarController;
.super Ljava/lang/Object;
.source "LocationSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

.field private final mSwitch:Landroid/widget/Switch;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {v0, p1, p0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLocationModeChanged(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v2, v1}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v3, v1}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eq v0, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v4, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0, p2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    return-void
.end method
