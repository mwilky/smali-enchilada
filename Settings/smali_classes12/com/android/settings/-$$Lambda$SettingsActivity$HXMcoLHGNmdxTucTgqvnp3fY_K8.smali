.class public final synthetic Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/SettingsActivity;

.field private final synthetic f$1:Lcom/android/settings/search/DeviceIndexFeatureProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/search/DeviceIndexFeatureProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;->f$0:Lcom/android/settings/SettingsActivity;

    iput-object p2, p0, Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;->f$1:Lcom/android/settings/search/DeviceIndexFeatureProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;->f$0:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;->f$1:Lcom/android/settings/search/DeviceIndexFeatureProvider;

    invoke-static {v0, v1}, Lcom/android/settings/SettingsActivity;->lambda$updateDeviceIndex$0(Lcom/android/settings/SettingsActivity;Lcom/android/settings/search/DeviceIndexFeatureProvider;)V

    return-void
.end method
