.class public Landroid/widget/MultiAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "MultiAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;,
        Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    }
.end annotation


# instance fields
.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    sub-int v4, v1, v3

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getThreshold()I

    move-result v5

    if-lt v4, v5, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method finishInit()V
    .locals 0

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public performValidation()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getValidator()Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_3

    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v1, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    invoke-interface {v1, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_1
    invoke-interface {v0, v5}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v5}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v1, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->clearComposingText()V

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2, v1, v0, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-void
.end method
