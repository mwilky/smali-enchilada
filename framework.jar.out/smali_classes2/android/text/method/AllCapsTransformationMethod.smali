.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 3

    iget-boolean v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "AllCapsTransformationMethod"

    const-string v1, "Caller did not enable length changes; not transforming text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    :cond_3
    instance-of v1, p1, Landroid/text/Spanned;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    return-void
.end method
