.class public final Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;
.super Ljava/lang/Object;
.source "TextClassifierImplNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImplNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotationOptions"
.end annotation


# instance fields
.field private final mLocales:Ljava/lang/String;

.field private final mReferenceTimeMsUtc:J

.field private final mReferenceTimezone:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mReferenceTimeMsUtc:J

    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mReferenceTimezone:Ljava/lang/String;

    iput-object p4, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mLocales:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mLocales:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceTimeMsUtc()J
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mReferenceTimeMsUtc:J

    return-wide v0
.end method

.method public getReferenceTimezone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mReferenceTimezone:Ljava/lang/String;

    return-object v0
.end method
