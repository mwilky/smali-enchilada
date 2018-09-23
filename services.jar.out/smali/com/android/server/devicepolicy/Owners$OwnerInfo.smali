.class Lcom/android/server/devicepolicy/Owners$OwnerInfo;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OwnerInfo"
.end annotation


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public remoteBugreportHash:Ljava/lang/String;

.field public remoteBugreportUri:Ljava/lang/String;

.field public userRestrictionsMigrated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    return-void
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 15

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "name"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "component"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "userRestrictionsMigrated"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v2, "remoteBugreportUri"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "remoteBugreportHash"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v10, :cond_1

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v14, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-object v3, v14

    move-object v4, v9

    move-object v5, v2

    move v6, v12

    move-object v7, v13

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v14

    :cond_0
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing owner file. Bad component name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v8, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    move v5, v12

    move-object v6, v13

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "admin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "package"

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    const-string v1, "component"

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string/jumbo v1, "userRestrictionsMigrated"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "remoteBugreportUri"

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "remoteBugreportHash"

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
