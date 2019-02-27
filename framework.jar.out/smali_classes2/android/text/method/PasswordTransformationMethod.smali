.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$Visible;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# static fields
.field private static DOT:C

.field private static sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2022

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()C
    .locals 1

    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method public static getInstance()Landroid/text/method/PasswordTransformationMethod;
    .locals 1

    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    return-object v0
.end method

.method private static removeVisibleSpans(Landroid/text/Spannable;)V
    .locals 3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/PasswordTransformationMethod$Visible;

    nop

    :goto_0
    move v1, v2

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 5

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    move v2, v3

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-object v4, v1, v2

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    new-instance v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v2, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    const/16 v4, 0x22

    invoke-interface {v0, v2, v3, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    new-instance v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v0, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 1

    if-nez p3, :cond_0

    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    array-length v2, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    nop

    :goto_0
    if-nez v2, :cond_1

    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/view/View;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v3

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_3

    if-lez p4, :cond_3

    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    const/4 v4, 0x1

    if-ne p4, v4, :cond_3

    new-instance v4, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {v4, v0, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int v5, p2, p4

    const/16 v6, 0x21

    invoke-interface {v0, v4, p2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-void
.end method
