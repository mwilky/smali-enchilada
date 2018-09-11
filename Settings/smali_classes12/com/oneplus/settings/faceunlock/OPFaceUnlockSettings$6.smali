.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;
.super Ljava/lang/Object;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showRemoveFaceDataDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .line 312
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 316
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$400(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 317
    return-void
.end method
