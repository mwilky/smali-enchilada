.class Lcom/android/systemui/volume/VolumeDialogImpl$6;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    return-void
.end method
