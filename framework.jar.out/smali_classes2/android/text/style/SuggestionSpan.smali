.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CORRECTION:I = 0x4

.field public static final FLAG_EASY_CORRECT:I = 0x1

.field public static final FLAG_MISSPELLED:I = 0x2

.field public static final SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"

.field private static final TAG:Ljava/lang/String; = "SuggestionSpan"


# instance fields
.field private mAutoCorrectionUnderlineColor:I

.field private mAutoCorrectionUnderlineThickness:F

.field private mEasyCorrectUnderlineColor:I

.field private mEasyCorrectUnderlineThickness:F

.field private mFlags:I

.field private final mHashCode:I

.field private final mLanguageTag:Ljava/lang/String;

.field private final mLocaleStringForCompatibility:Ljava/lang/String;

.field private mMisspelledUnderlineColor:I

.field private mMisspelledUnderlineThickness:F

.field private final mNotificationTargetClassName:Ljava/lang/String;

.field private final mNotificationTargetPackageName:Ljava/lang/String;

.field private final mSuggestions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    array-length v0, p3

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    const-string v2, "SuggestionSpan"

    const-string v3, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v3, ""

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    :goto_4
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string v1, ""

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    :goto_5
    iget-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    iget-object v5, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method private static hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 8

    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return-void

    :cond_0
    const v2, 0x11100d2

    sget-object v3, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    const v2, 0x11100d1

    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    const v2, 0x11100d0

    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v0

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNotificationTargetClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public getSuggestions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlineColor()I
    .locals 5

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v1

    :cond_3
    iget v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v1

    :cond_4
    if-eqz v2, :cond_5

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v1

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_5

    iget-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    if-eqz v1, :cond_4

    if-ltz p3, :cond_4

    iget-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    array-length v1, v1

    if-lt p3, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "before"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "after"

    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hashcode"

    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string v1, "SuggestionSpan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to notify the suggestion as the index is out of range index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 5

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v1, v2

    nop

    :cond_2
    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v2, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_2

    :cond_3
    iget v2, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_5

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v2, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    :cond_5
    :goto_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
