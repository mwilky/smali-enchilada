.class public Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field protected mBannerResourceId:I

.field protected mDescription:Ljava/lang/String;

.field protected mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnHost:Z

.field protected mRequiresDeviceUnlock:Z

.field protected mService:Landroid/content/pm/ResolveInfo;

.field protected mSettingsActivityName:Ljava/lang/String;

.field protected mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v0, 0x0

    move-object v6, v0

    if-eqz v4, :cond_1

    :try_start_0
    const-string v7, "android.nfc.cardemulation.host_apdu_service"

    invoke-virtual {v5, v2, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    move-object v6, v7

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :cond_1
    const-string v7, "android.nfc.cardemulation.off_host_apdu_service"

    invoke-virtual {v5, v2, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    move-object v6, v7

    if-eqz v6, :cond_18

    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v7, v8

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_4

    const-string v11, "host-apdu-service"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with <host-apdu-service> tag"

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    if-nez v4, :cond_6

    const-string/jumbo v11, "offhost-apdu-service"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    const/4 v13, -0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-eqz v4, :cond_7

    sget-object v0, Lcom/android/internal/R$styleable;->HostApduService:[I

    invoke-virtual {v11, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v9, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    invoke-virtual {v11, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    iput-boolean v15, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {v0, v9, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iput-boolean v4, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v8, v16

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    move v7, v13

    if-ne v13, v14, :cond_8

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v0, :cond_16

    :cond_8
    const/4 v13, 0x1

    if-eq v7, v13, :cond_16

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    if-ne v7, v9, :cond_c

    const-string v13, "aid-group"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-nez v8, :cond_c

    sget-object v13, Lcom/android/internal/R$styleable;->AidGroup:[I

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v9, 0x1

    invoke-virtual {v13, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    const-string/jumbo v9, "payment"

    move-object/from16 v15, v17

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "other"

    move-object/from16 v17, v9

    move-object/from16 v15, v17

    :cond_9
    iget-object v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/AidGroup;

    move-object v8, v9

    if-eqz v8, :cond_b

    const-string/jumbo v9, "other"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "ApduServiceInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    const-string v0, "Not allowing multiple aid-groups in the "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " category"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object/from16 v16, v0

    move-object/from16 v9, v18

    goto :goto_6

    :cond_a
    move/from16 v19, v0

    move-object/from16 v16, v8

    move-object/from16 v9, v18

    goto :goto_6

    :cond_b
    move/from16 v19, v0

    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    move-object/from16 v9, v18

    invoke-direct {v0, v15, v9}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v0

    :goto_6
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_c

    :cond_c
    move/from16 v19, v0

    const/4 v0, 0x3

    if-ne v7, v0, :cond_f

    const-string v9, "aid-group"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v8, :cond_f

    iget-object v9, v8, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_d

    iget-object v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v9, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    const-string v9, "ApduServiceInfo"

    const-string v13, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static {v9, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_7
    const/16 v16, 0x0

    move v14, v0

    move/from16 v0, v19

    const/4 v9, 0x2

    goto/16 :goto_d

    :cond_f
    const/4 v9, 0x2

    if-ne v7, v9, :cond_11

    const-string v9, "aid-filter"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v8, :cond_11

    sget-object v9, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v11, v12, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    iget-object v14, v8, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    iget-object v14, v8, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    const-string v14, "ApduServiceInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring invalid or duplicate aid: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_b

    :cond_11
    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    const-string v0, "aid-prefix-filter"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v8, :cond_13

    sget-object v0, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v11, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v13, "*"

    invoke-virtual {v9, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    invoke-static {v9}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    iget-object v13, v8, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v13, v8, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    const-string v13, "ApduServiceInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring invalid or duplicate aid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_b

    :cond_13
    const/4 v0, 0x2

    if-ne v7, v0, :cond_15

    const-string v9, "aid-suffix-filter"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v8, :cond_15

    sget-object v9, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v11, v12, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    invoke-static {v14}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    iget-object v15, v8, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    iget-object v15, v8, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    const-string v15, "ApduServiceInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring invalid or duplicate aid: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_15
    :goto_b
    move-object/from16 v16, v8

    :goto_c
    move/from16 v0, v19

    const/4 v9, 0x2

    const/4 v14, 0x3

    :goto_d
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_16
    if-eqz v6, :cond_17

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_17
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return-void

    :cond_18
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_e
    nop

    :try_start_2
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create context for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_f
    if-eqz v6, :cond_19

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_19
    throw v0
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    iput-boolean p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iput p7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    iput p8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    iput-object p9, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Static AID groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        Category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "    Dynamic AID groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        Category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Settings Activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAidGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getAids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method public getPrefixAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubsetAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOnHost()Z
    .locals 1

    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ApduServiceInfo"

    const-string v3, "Could not load banner."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "ApduServiceInfo"

    const-string v3, "Could not load banner."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requiresUnlock()Z
    .locals 1

    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .locals 2

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApduService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Static AID Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ", Dynamic AID Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :cond_1
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
