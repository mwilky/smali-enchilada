.class public final Landroid/view/textclassifier/TextSelection$Request;
.super Ljava/lang/Object;
.source "TextSelection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextSelection$Request$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextSelection$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDarkLaunchAllowed:Z

.field private final mDefaultLocales:Landroid/os/LocaleList;

.field private final mEndIndex:I

.field private final mStartIndex:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextSelection$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextSelection$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDarkLaunchAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextSelection$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    iput p3, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    iput-object p4, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    iput-boolean p5, p0, Landroid/view/textclassifier/TextSelection$Request;->mDarkLaunchAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZLandroid/view/textclassifier/TextSelection$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isDarkLaunchAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDarkLaunchAllowed:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    return-void
.end method
