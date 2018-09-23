.class public Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
.super Ljava/lang/Object;
.source "AnnotationSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/AnnotationSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkInfo"
.end annotation


# static fields
.field public static final DEFAULT_ANNOTATION:Ljava/lang/String; = "link"

.field private static final TAG:Ljava/lang/String; = "AnnotationSpan.LinkInfo"


# instance fields
.field private final mActionable:Ljava/lang/Boolean;

.field private final mAnnotation:Ljava/lang/String;

.field private final mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mAnnotation:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/settings/utils/-$$Lambda$AnnotationSpan$LinkInfo$z7jQ60cPKy5FsRC4nTEr8I88qP0;

    invoke-direct {v0, p3}, Lcom/android/settings/utils/-$$Lambda$AnnotationSpan$LinkInfo$z7jQ60cPKy5FsRC4nTEr8I88qP0;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mAnnotation:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mAnnotation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnnotationSpan.LinkInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity was not found for intent, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public isActionable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->mActionable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
