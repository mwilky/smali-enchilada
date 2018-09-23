.class Lcom/android/setupwizardlib/template/RequireScrollMixin$3;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScrollWithButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$moreText:Ljava/lang/CharSequence;

.field final synthetic val$nextText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/Button;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;->val$button:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;->val$moreText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;->val$nextText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequireScrollStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;->val$button:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;->val$moreText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$3;->val$nextText:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
