.class public final Landroid/view/textclassifier/TextSelection$Options;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field private mDarkLaunchAllowed:Z

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private final mRequest:Landroid/view/textclassifier/TextSelection$Request;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/textclassifier/TextSelection$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Landroid/view/textclassifier/TextSelection$Options;->mRequest:Landroid/view/textclassifier/TextSelection$Request;

    return-void
.end method

.method public static from(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection$Options;
    .locals 2

    new-instance v0, Landroid/view/textclassifier/TextSelection$Options;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextSelection$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)V

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Options;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Options;

    return-object v0
.end method


# virtual methods
.method public getDefaultLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Options;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getRequest()Landroid/view/textclassifier/TextSelection$Request;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Options;->mRequest:Landroid/view/textclassifier/TextSelection$Request;

    return-object v0
.end method

.method public getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object v0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Options;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Options;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method
