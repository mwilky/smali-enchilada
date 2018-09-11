.class Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;
.super Ljava/lang/Object;
.source "OPLedColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    .line 350
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 355
    .local v0, "index":I
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 359
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$200(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;Ljava/lang/String;)V

    .line 361
    :cond_0
    return-void
.end method
