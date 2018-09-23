.class public final Lcom/android/server/autofill/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/Helper$ViewNodeFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillHelper"

.field public static sDebug:Z

.field public static sFullScreenMode:Ljava/lang/Boolean;

.field static sPartitionMaxCount:I

.field public static sVerbose:Z

.field public static sVisibleDatasetsMaxCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    sput-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const/16 v0, 0xa

    sput v0, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/autofill/Helper;->sVisibleDatasetsMaxCount:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-interface {p1, v3}, Lcom/android/server/autofill/Helper$ViewNodeFilter;->matches(Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    move v4, v2

    :goto_2
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public static findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    return-object v0
.end method

.method static getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v3}, Landroid/util/ArrayMap;-><init>(I)V

    nop

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method static getNumericValue(Landroid/metrics/LogMaker;I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method static synthetic lambda$findViewNodeByAutofillId$0(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sanitizeUrlBar$1([Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .locals 1

    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private static newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;
    .locals 3

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0x38c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b0

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    if-eqz p3, :cond_0

    const/16 v1, 0x586

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    return-object v0
.end method

.method public static newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .locals 1

    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method public static paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "_chars"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 5

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Helper$laLKWmsGqkFIaRXW5rR6_s66Vsw;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/-$$Lambda$Helper$laLKWmsGqkFIaRXW5rR6_s66Vsw;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "AutofillHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizeUrlBar(): empty on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->setWebDomain(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "AutofillHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizeUrlBar(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method static toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[",
            "Landroid/view/autofill/AutofillId;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
