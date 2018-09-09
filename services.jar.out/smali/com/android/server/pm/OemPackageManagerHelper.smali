.class public Lcom/android/server/pm/OemPackageManagerHelper;
.super Ljava/lang/Object;
.source "OemPackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    }
.end annotation


# static fields
.field static final GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

.field private static final TAG:Ljava/lang/String; = "OemPackageManagerHelper"

.field static final TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

.field static mDeletedReserveApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    .line 233
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/pm/Signature;

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/server/pm/OemPackageManagerHelper;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    .line 236
    new-array v0, v0, [[Landroid/content/pm/Signature;

    sget-object v1, Lcom/android/server/pm/OemPackageManagerHelper;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAppHasDeleted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;

    .line 58
    .local v1, "info":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    .end local v1    # "info":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 239
    if-nez p0, :cond_1

    .line 240
    if-nez p1, :cond_0

    .line 241
    nop

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    const/4 v0, -0x1

    .line 240
    :goto_0
    return v0

    .line 244
    :cond_1
    if-nez p1, :cond_2

    .line 245
    const/4 v0, -0x2

    return v0

    .line 247
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 249
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v4    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 252
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    .line 253
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 256
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    return v2

    .line 259
    :cond_5
    const/4 v2, -0x3

    return v2
.end method

.method static getDataFreeSpace()J
    .locals 8

    .line 221
    const-wide/16 v0, 0x0

    .line 222
    .local v0, "block":J
    const-wide/16 v2, 0x0

    .line 223
    .local v2, "blockSize":J
    const-wide/16 v4, 0x0

    .line 224
    .local v4, "dataFreeSpace":J
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 225
    .local v6, "mStatFs":Landroid/os/StatFs;
    nop

    .line 226
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 227
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 228
    mul-long v4, v0, v2

    .line 230
    return-wide v4
.end method

.method static getDeletedAppVersionCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;

    .line 88
    .local v1, "info":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget v0, v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->versionCode:I

    return v0

    .line 91
    .end local v1    # "info":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static isPackagesXMLExist()Z
    .locals 3

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x1

    return v2

    .line 47
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isReserveApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "codePath"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 102
    :cond_0
    const-string v1, "/system/reserve"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/vendor/reserve"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 4
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .line 263
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/pm/OemPackageManagerHelper;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 264
    sget-object v2, Lcom/android/server/pm/OemPackageManagerHelper;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    .line 265
    .local v2, "sig":[Landroid/content/pm/Signature;
    invoke-static {v2, p0}, Lcom/android/server/pm/OemPackageManagerHelper;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-nez v3, :cond_0

    .line 266
    const/4 v0, 0x1

    return v0

    .line 263
    .end local v2    # "sig":[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method static putDeletedAppNameinList(Ljava/lang/String;I)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionCode"    # I

    .line 72
    sget-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;

    .line 73
    .local v1, "info":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iput p1, v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->versionCode:I

    .line 75
    return-void

    .line 77
    .end local v1    # "info":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method static readDeletedReserveAppsFromXML()V
    .locals 14

    .line 128
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "packages-reserve.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, "deletedReserveAppsXML":Ljava/io/File;
    const/4 v2, 0x0

    .line 131
    .local v2, "input":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 136
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 137
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .line 139
    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    if-eq v6, v7, :cond_1

    .line 139
    .end local v6    # "type":I
    goto :goto_0

    .line 143
    .restart local v6    # "type":I
    :cond_1
    if-eq v6, v8, :cond_2

    .line 144
    return-void

    .line 146
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 147
    .local v5, "outerDepth":I
    :cond_3
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v6, v8

    if-eq v8, v7, :cond_8

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4

    .line 148
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_8

    .line 149
    :cond_4
    if-eq v6, v8, :cond_3

    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    .line 150
    goto :goto_1

    .line 152
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "package"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 154
    const-string/jumbo v9, "packageName"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v10, "versionCode"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .local v10, "codeString":Ljava/lang/String;
    const/4 v11, -0x1

    .line 157
    .local v11, "code":I
    if-eqz v10, :cond_6

    .line 159
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v11, v12

    .line 161
    goto :goto_2

    .line 160
    :catch_0
    move-exception v12

    .line 163
    :cond_6
    :goto_2
    :try_start_2
    sget-object v12, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;

    invoke-direct {v13, v9, v11}, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "codeString":Ljava/lang/String;
    .end local v11    # "code":I
    :cond_7
    goto :goto_1

    .line 168
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "outerDepth":I
    .end local v6    # "type":I
    :catch_1
    move-exception v3

    .line 169
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "OemPackageManagerHelper"

    const-string v5, "Error reading reserve package list"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 166
    :catch_2
    move-exception v3

    .line 167
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "OemPackageManagerHelper"

    const-string v5, "Error reading reserve package list"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_8
    nop

    .line 171
    :goto_3
    return-void
.end method

.method static removeDeletedAppNameinList(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "pkgInfo":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    sget-object v1, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;

    .line 113
    .local v2, "info":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    move-object v0, v2

    .line 115
    goto :goto_1

    .line 117
    .end local v2    # "info":Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 120
    sget-object v1, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    return-void
.end method

.method static writeDeletedReserveAppsToXML()V
    .locals 10

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "packages-reserve.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v1, "deletedReserveAppsXML":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 183
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 184
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    .local v3, "output":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 186
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 187
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 189
    const-string/jumbo v5, "packages"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    sget-object v5, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 192
    .local v5, "size":I
    const/4 v6, 0x0

    .line 192
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 193
    const-string/jumbo v8, "package"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string/jumbo v8, "packageName"

    sget-object v9, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;

    iget-object v9, v9, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->packageName:Ljava/lang/String;

    .line 194
    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string/jumbo v8, "versionCode"

    sget-object v9, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;

    iget v9, v9, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->versionCode:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string/jumbo v8, "package"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 201
    .end local v6    # "i":I
    :cond_1
    const-string/jumbo v6, "packages"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 203
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 204
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 205
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b4

    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "output":Ljava/io/BufferedOutputStream;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    goto :goto_1

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OemPackageManagerHelper"

    const-string v4, "Failed to write packages to list"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
