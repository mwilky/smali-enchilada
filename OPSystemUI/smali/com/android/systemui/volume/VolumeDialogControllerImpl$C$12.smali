.class Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$12;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onPhoneStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$phoneState:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 988
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$12;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$12;->val$entry:Ljava/util/Map$Entry;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$12;->val$phoneState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$12;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$12;->val$phoneState:I

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onPhoneStateChanged(I)V

    .line 992
    return-void
.end method
