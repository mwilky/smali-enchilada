.class Lcom/oneplus/settings/OPColorPickerActivity$4;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->showColotEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPColorPickerActivity;

    .line 272
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$000(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "colorText":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$200(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const v3, 0x7f120d47

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 280
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$302(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/settings/ui/ColorPickerView;

    move-result-object v1

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->convertToColorInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    .line 284
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$600(Lcom/oneplus/settings/OPColorPickerActivity;ILjava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$700(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 287
    return-void
.end method
