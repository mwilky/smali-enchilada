.class public Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlickrPhoto"
.end annotation


# static fields
.field private static final GROUPING_PATTERN:Ljava/util/regex/Pattern;

.field private static final SETS:Ljava/lang/String; = "sets"

.field private static final TAGS:Ljava/lang/String; = "tags"

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private grouping:Ljava/lang/String;

.field private groupingId:Ljava/lang/String;

.field private photo:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://(?:www.)?flickr.com/photos/([^/?#&]+)/?([^/?#&]+)?/?.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->URL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "http://(?:www.)?flickr.com/photos/([^/?#&]+)/(tags|sets)/([^/?#&]+)/?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->GROUPING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p5}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    const-string v0, "show"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p2

    nop

    :cond_0
    iput-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    const-string v0, "tags"

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static getPhotoURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTagsURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/tags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSetsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTagsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
    .locals 10

    sget-object v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->GROUPING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v1

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getGrouping()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUser()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhoto()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhoto()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGrouping()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGrouping()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGroupingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGroupingId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "sets"

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserSetsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "tags"

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserTagsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getTagsURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhotoURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isHtml()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMedia()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
