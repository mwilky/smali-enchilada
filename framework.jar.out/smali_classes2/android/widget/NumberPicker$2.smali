.class Landroid/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)V

    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const v4, 0x10202ae

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v3, v1, v2}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;ZJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;ZJ)V

    :goto_0
    return v3
.end method
