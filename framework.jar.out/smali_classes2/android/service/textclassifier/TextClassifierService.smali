.class public abstract Landroid/service/textclassifier/TextClassifierService;
.super Landroid/app/Service;
.source "TextClassifierService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/TextClassifierService$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassifierService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.textclassifier.TextClassifierService"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/textclassifier/TextClassifierService$1;

    invoke-direct {v0, p0}, Landroid/service/textclassifier/TextClassifierService$1;-><init>(Landroid/service/textclassifier/TextClassifierService;)V

    iput-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;

    return-void
.end method

.method public static getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 12

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "TextClassifierService"

    const-string v3, "No configured system TextClassifierService"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x100000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_TEXTCLASSIFIER_SERVICE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    :cond_2
    const-string v8, "TextClassifierService"

    const-string v9, "Service %s should require %s permission. Found %s permission"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    aput-object v11, v10, v5

    const-string v5, "android.permission.BIND_TEXTCLASSIFIER_SERVICE"

    aput-object v5, v10, v4

    const/4 v4, 0x2

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object v5, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :goto_0
    const-string v6, "TextClassifierService"

    const-string v7, "Package or service not found in package %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public final getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, v0}, Landroid/service/textclassifier/TextClassifierService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.textclassifier.TextClassifierService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextClassification$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;)V"
        }
    .end annotation
.end method

.method public onClassifyText(Ljava/lang/CharSequence;IILandroid/view/textclassifier/TextClassification$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/view/textclassifier/TextClassification$Options;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getRequest()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getRequest()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-direct {v1, p1, p2, p3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, v1, p5, p6}, Landroid/service/textclassifier/TextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0

    return-void
.end method

.method public onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0

    return-void
.end method

.method public abstract onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextLinks$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextLinks;",
            ">;)V"
        }
    .end annotation
.end method

.method public onGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/view/textclassifier/TextLinks$Options;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextLinks;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getRequest()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getRequest()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v1, p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/service/textclassifier/TextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 0

    return-void
.end method

.method public abstract onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextSelection$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextSelection;",
            ">;)V"
        }
    .end annotation
.end method

.method public onSuggestSelection(Ljava/lang/CharSequence;IILandroid/view/textclassifier/TextSelection$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/view/textclassifier/TextSelection$Options;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextSelection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getRequest()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getRequest()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/textclassifier/TextSelection$Request$Builder;

    invoke-direct {v1, p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, v1, p5, p6}, Landroid/service/textclassifier/TextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method
