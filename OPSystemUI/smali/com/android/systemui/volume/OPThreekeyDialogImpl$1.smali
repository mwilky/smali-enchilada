.class Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;
.super Landroid/view/OrientationEventListener;
.source "OPThreekeyDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/OPThreekeyDialogImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$000(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    return-void
.end method
