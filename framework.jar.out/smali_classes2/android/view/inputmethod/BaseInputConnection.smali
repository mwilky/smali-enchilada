.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static INVALID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    const/4 v0, -0x1

    sput v0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    return-void
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    return-void
.end method

.method private ensureDefaultComposingSpans()V
    .locals 7

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010230

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 6

    move v0, p1

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-gez p2, :cond_1

    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3

    :cond_1
    move v3, v1

    move v1, v0

    move v0, p2

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4

    if-eqz v3, :cond_3

    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v4

    :cond_3
    const/4 v4, 0x0

    return v4

    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eqz v3, :cond_6

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    :cond_5
    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3
.end method

.method private static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 6

    move v0, p1

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-gez p2, :cond_1

    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3

    :cond_1
    move v3, v1

    move v1, v0

    move v0, p2

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    if-lt v1, v2, :cond_4

    if-eqz v3, :cond_3

    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v4

    :cond_3
    return v2

    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eqz v3, :cond_6

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    :cond_5
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    :cond_8
    const/4 v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1

    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1

    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 4

    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    if-ge v2, v1, :cond_1

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-gez v2, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-ge v2, v1, :cond_5

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_5
    :goto_0
    if-eqz p3, :cond_8

    const/4 v3, 0x0

    instance-of v4, p1, Landroid/text/Spannable;

    if-nez v4, :cond_6

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v4

    move-object p1, v3

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v7

    const/16 v8, 0x121

    invoke-interface {v3, v6, v4, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    :cond_7
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    :cond_8
    if-lez p2, :cond_9

    add-int/lit8 v3, v2, -0x1

    add-int/2addr p2, v3

    goto :goto_2

    :cond_9
    add-int/2addr p2, v1

    :goto_2
    if-gez p2, :cond_a

    const/4 p2, 0x0

    :cond_a
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-le p2, v3, :cond_b

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_b
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    return-void
.end method

.method private sendCurrentText()V
    .locals 11

    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v3, :cond_2

    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    :cond_2
    new-array v3, v2, [C

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3, v4}, Landroid/text/Editable;->getChars(II[CI)V

    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    if-eqz v2, :cond_4

    nop

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return-void

    :cond_4
    new-instance v2, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_5
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8

    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x121

    if-eqz v0, :cond_2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget-object v3, v0, v2

    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    and-int/lit16 v5, v4, 0x133

    if-eq v5, v1, :cond_1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    and-int/lit8 v7, v4, -0x34

    or-int/lit16 v7, v7, 0x100

    or-int/lit8 v7, v7, 0x21

    invoke-interface {p0, v3, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v2, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public closeConnection()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v1, v2, :cond_1

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_1
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v3

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v4

    if-ge v4, v3, :cond_2

    move v5, v3

    move v3, v4

    move v4, v5

    :cond_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    if-eq v4, v5, :cond_4

    if-ge v3, v1, :cond_3

    move v1, v3

    :cond_3
    if-le v4, v2, :cond_4

    move v2, v4

    :cond_4
    const/4 v5, 0x0

    if-lez p1, :cond_6

    sub-int v6, v1, p1

    if-gez v6, :cond_5

    const/4 v6, 0x0

    :cond_5
    invoke-interface {v0, v6, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    sub-int v5, v1, v6

    :cond_6
    if-lez p2, :cond_8

    sub-int/2addr v2, v5

    add-int v6, v2, p2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-le v6, v7, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    :cond_7
    invoke-interface {v0, v2, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    const/4 v6, 0x1

    return v6
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 11

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    if-le v2, v3, :cond_1

    move v4, v2

    move v2, v3

    move v3, v4

    :cond_1
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    if-ge v5, v4, :cond_2

    move v6, v4

    move v4, v5

    move v5, v6

    :cond_2
    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    if-eq v5, v6, :cond_4

    if-ge v4, v2, :cond_3

    move v2, v4

    :cond_3
    if-le v5, v3, :cond_4

    move v3, v5

    :cond_4
    if-ltz v2, :cond_6

    if-ltz v3, :cond_6

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v2, v6}, Landroid/view/inputmethod/BaseInputConnection;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result v6

    sget v7, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v6, v7, :cond_6

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/view/inputmethod/BaseInputConnection;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result v1

    sget v7, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v1, v7, :cond_6

    sub-int v7, v2, v6

    if-lez v7, :cond_5

    invoke-interface {v0, v6, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_5
    sub-int v8, v1, v3

    if-lez v8, :cond_6

    sub-int v9, v3, v7

    sub-int v10, v1, v7

    invoke-interface {v0, v9, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_6
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    const/4 v1, 0x1

    return v1
.end method

.method public endBatchEdit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 4

    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v1, v2, :cond_2

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_2
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    if-le v2, v3, :cond_1

    move v4, v2

    move v2, v3

    move v3, v4

    :cond_1
    if-eq v2, v3, :cond_4

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v1, v2, :cond_1

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int v3, v2, p1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int p1, v3, v2

    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    add-int v3, v2, p1

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    :cond_4
    add-int v3, v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v1, v2, :cond_1

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_1
    if-gtz v1, :cond_2

    const-string v3, ""

    return-object v3

    :cond_2
    if-le p1, v1, :cond_3

    move p1, v1

    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    sub-int v3, v1, p1

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    :cond_4
    sub-int v3, v1, p1

    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    move v1, p1

    move v2, p2

    if-le v1, v2, :cond_0

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-le v1, v3, :cond_3

    move v1, v3

    :cond_3
    if-le v2, v3, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    const/16 v5, 0x121

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v4

    invoke-interface {v0, v6, v1, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    return v0
.end method

.method public setSelection(II)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt p1, v1, :cond_3

    if-gt p2, v1, :cond_3

    if-ltz p1, :cond_3

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    if-ne p1, p2, :cond_2

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_2
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_0
    return v2

    :cond_3
    :goto_1
    return v2
.end method
