.class public Lcom/android/setupwizardlib/view/RichTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "RichTextView.java"

# interfaces
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;


# static fields
.field private static final ANNOTATION_LINK:Ljava/lang/String; = "link"

.field private static final ANNOTATION_TEXT_APPEARANCE:Ljava/lang/String; = "textAppearance"

.field private static final TAG:Ljava/lang/String; = "RichTextView"


# instance fields
.field private mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

.field private mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->init()V

    return-void
.end method

.method public static getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/Annotation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "textAppearance"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "style"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    const-string v8, "RichTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find resource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v8, p0, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v4, v8}, Lcom/android/setupwizardlib/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v6, "link"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/android/setupwizardlib/span/LinkSpan;

    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/setupwizardlib/span/LinkSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v6}, Lcom/android/setupwizardlib/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    return-object p1
.end method

.method private hasLinks(Ljava/lang/CharSequence;)Z
    .locals 4

    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->drawableStateChanged()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/view/RichTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getOnLinkClickListener()Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    return-object v0
.end method

.method public onLinkClick(Lcom/android/setupwizardlib/span/LinkSpan;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/android/setupwizardlib/span/LinkSpan;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    instance-of v2, v1, Lcom/android/setupwizardlib/view/TouchableMovementMethod;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/setupwizardlib/view/TouchableMovementMethod;

    invoke-interface {v2}, Lcom/android/setupwizardlib/view/TouchableMovementMethod;->getLastTouchEvent()Landroid/view/MotionEvent;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v2}, Lcom/android/setupwizardlib/view/TouchableMovementMethod;->isLastTouchEventHandled()Z

    move-result v3

    return v3

    :cond_0
    return v0
.end method

.method public setOnLinkClickListener(Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/view/RichTextView;->getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/view/RichTextView;->hasLinks(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/setupwizardlib/view/TouchableMovementMethod$TouchableLinkMovementMethod;->getInstance()Lcom/android/setupwizardlib/view/TouchableMovementMethod$TouchableLinkMovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusable(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setRevealOnFocusHint(Z)V

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusableInTouchMode(Z)V

    :cond_1
    return-void
.end method
