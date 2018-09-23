.class Lcom/oneplus/settings/notification/OPEarphoneMode$3;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPEarphoneMode;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    iput-object p2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v3, v2, Landroid/text/SpannableString;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-ne v0, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    int-to-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    move-object v9, v2

    check-cast v9, Landroid/text/SpannableString;

    const-class v10, Landroid/text/style/ClickableSpan;

    invoke-virtual {v9, v8, v8, v10}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ClickableSpan;

    array-length v10, v9

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v10}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$400(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    iget-object v10, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return v4
.end method
