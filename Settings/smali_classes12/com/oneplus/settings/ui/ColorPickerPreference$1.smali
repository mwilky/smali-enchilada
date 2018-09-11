.class Lcom/oneplus/settings/ui/ColorPickerPreference$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/ColorPickerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/ColorPickerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 383
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 388
    .local v0, "index":I
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xb

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 392
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$200(Lcom/oneplus/settings/ui/ColorPickerPreference;Ljava/lang/String;)V

    .line 394
    :cond_1
    if-ne v0, v2, :cond_2

    .line 395
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$300(Lcom/oneplus/settings/ui/ColorPickerPreference;)Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$300(Lcom/oneplus/settings/ui/ColorPickerPreference;)Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;->onCustomColorClick()V

    .line 399
    :cond_2
    return-void
.end method
