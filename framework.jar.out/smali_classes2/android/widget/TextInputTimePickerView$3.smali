.class Landroid/widget/TextInputTimePickerView$3;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextInputTimePickerView;


# direct methods
.method constructor <init>(Landroid/widget/TextInputTimePickerView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextInputTimePickerView$3;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-nez p3, :cond_0

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView$3;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-static {v1}, Landroid/widget/TextInputTimePickerView;->access$200(Landroid/widget/TextInputTimePickerView;)Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView$3;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-static {v1}, Landroid/widget/TextInputTimePickerView;->access$200(Landroid/widget/TextInputTimePickerView;)Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
