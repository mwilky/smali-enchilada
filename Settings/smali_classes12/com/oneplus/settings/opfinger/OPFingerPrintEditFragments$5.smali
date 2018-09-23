.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

.field final synthetic val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$400(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
