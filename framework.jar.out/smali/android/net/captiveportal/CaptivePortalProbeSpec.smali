.class public abstract Landroid/net/captiveportal/CaptivePortalProbeSpec;
.super Ljava/lang/Object;
.source "CaptivePortalProbeSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;
    }
.end annotation


# static fields
.field public static final HTTP_LOCATION_HEADER_NAME:Ljava/lang/String; = "Location"

.field private static final REGEX_SEPARATOR:Ljava/lang/String; = "@@/@@"

.field private static final SPEC_SEPARATOR:Ljava/lang/String; = "@@,@@"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEncodedSpec:Ljava/lang/String;

.field private final mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/captiveportal/CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec;->mEncodedSpec:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec;->mUrl:Ljava/net/URL;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public static parseCaptivePortalProbeSpecs(Ljava/lang/String;)[Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "@@,@@"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    :try_start_0
    invoke-static {v5}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parseSpec(Ljava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v7, Landroid/net/captiveportal/CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid probe spec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/net/captiveportal/CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    const-string v3, "could not create any validation spec from %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/captiveportal/CaptivePortalProbeSpec;

    return-object v1
.end method

.method private static parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "Invalid status pattern [%s]: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseSpec(Ljava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "@@/@@"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "@@/@@"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const-string v5, "@@/@@"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    aget-object v3, v0, v3

    invoke-static {v3, v2}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5, v4}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    new-instance v6, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;

    new-instance v7, Ljava/net/URL;

    aget-object v1, v0, v1

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, p0, v7, v3, v5}, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    return-object v6

    :cond_0
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Probe spec does not have 3 parts"

    invoke-direct {v2, v3, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "Empty probe spec"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static parseSpecOrNull(Ljava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parseSpec(Ljava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid probe spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getEncodedSpec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec;->mEncodedSpec:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec;->mUrl:Ljava/net/URL;

    return-object v0
.end method
