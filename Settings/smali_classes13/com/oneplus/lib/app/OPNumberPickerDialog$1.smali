.class Lcom/oneplus/lib/app/OPNumberPickerDialog$1;
.super Ljava/lang/Object;
.source "OPNumberPickerDialog.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPNumberPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPNumberPickerDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPNumberPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog$1;->this$0:Lcom/oneplus/lib/app/OPNumberPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog$1;->this$0:Lcom/oneplus/lib/app/OPNumberPickerDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->access$000(Lcom/oneplus/lib/app/OPNumberPickerDialog;)V

    return-void
.end method
