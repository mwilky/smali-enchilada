.class public Landroid/webkit/TracingConfig;
.super Ljava/lang/Object;
.source "TracingConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/TracingConfig$Builder;,
        Landroid/webkit/TracingConfig$TracingMode;,
        Landroid/webkit/TracingConfig$PredefinedCategories;
    }
.end annotation


# static fields
.field public static final CATEGORIES_ALL:I = 0x1

.field public static final CATEGORIES_ANDROID_WEBVIEW:I = 0x2

.field public static final CATEGORIES_FRAME_VIEWER:I = 0x40

.field public static final CATEGORIES_INPUT_LATENCY:I = 0x8

.field public static final CATEGORIES_JAVASCRIPT_AND_RENDERING:I = 0x20

.field public static final CATEGORIES_NONE:I = 0x0

.field public static final CATEGORIES_RENDERING:I = 0x10

.field public static final CATEGORIES_WEB_DEVELOPER:I = 0x4

.field public static final RECORD_CONTINUOUSLY:I = 0x1

.field public static final RECORD_UNTIL_FULL:I


# instance fields
.field private final mCustomIncludedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPredefinedCategories:I

.field private mTracingMode:I


# direct methods
.method public constructor <init>(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/TracingConfig;->mCustomIncludedCategories:Ljava/util/List;

    iput p1, p0, Landroid/webkit/TracingConfig;->mPredefinedCategories:I

    iget-object v0, p0, Landroid/webkit/TracingConfig;->mCustomIncludedCategories:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p3, p0, Landroid/webkit/TracingConfig;->mTracingMode:I

    return-void
.end method


# virtual methods
.method public getCustomIncludedCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkit/TracingConfig;->mCustomIncludedCategories:Ljava/util/List;

    return-object v0
.end method

.method public getPredefinedCategories()I
    .locals 1

    iget v0, p0, Landroid/webkit/TracingConfig;->mPredefinedCategories:I

    return v0
.end method

.method public getTracingMode()I
    .locals 1

    iget v0, p0, Landroid/webkit/TracingConfig;->mTracingMode:I

    return v0
.end method
