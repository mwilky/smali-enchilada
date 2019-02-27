.class Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field protected mImpl:Ljava/text/BreakIterator;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .locals 1

    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 5

    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    move v2, p1

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    return-object v1

    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v1

    return-object v1
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 1

    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    return-void
.end method

.method public preceding(I)[I
    .locals 5

    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    move v2, p1

    if-le v2, v0, :cond_2

    move v2, v0

    :cond_2
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    return-object v1

    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0, v3, v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v1

    return-object v1
.end method
