.class Lcom/android/server/location/GnssLocationProvider$13;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->setEngineCapabilities(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;

.field final synthetic val$capabilities:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/GnssLocationProvider$13;->val$capabilities:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$13;->val$capabilities:I

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->access$3002(Lcom/android/server/location/GnssLocationProvider;I)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->access$3100(Lcom/android/server/location/GnssLocationProvider;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->enablePeriodicTimeInjection()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3200(Lcom/android/server/location/GnssLocationProvider;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$2800(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->access$3100(Lcom/android/server/location/GnssLocationProvider;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$2900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->access$3100(Lcom/android/server/location/GnssLocationProvider;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3300(Lcom/android/server/location/GnssLocationProvider;)V

    return-void
.end method
