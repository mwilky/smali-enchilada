.class Lcom/oneplus/settings/OPColorPickerActivity$3;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 261
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$3;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 267
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 268
    return-void
.end method
