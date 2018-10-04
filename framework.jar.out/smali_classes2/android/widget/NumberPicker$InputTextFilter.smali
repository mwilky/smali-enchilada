.class Landroid/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    iget-object v0, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$700(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$700(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p4, p6, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2, v1}, Landroid/widget/NumberPicker;->access$900(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)I

    move-result v3

    if-gt v2, v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const-string v3, ""

    return-object v3

    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, ""

    return-object v1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_8

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/widget/NumberPicker;->access$1100(Landroid/widget/NumberPicker;II)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, p5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const-string v1, ""

    return-object v1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    invoke-static {}, Landroid/widget/NumberPicker;->access$600()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
