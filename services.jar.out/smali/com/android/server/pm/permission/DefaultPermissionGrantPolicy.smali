.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    }
.end annotation


# static fields
.field private static final ACTION_TRACK:Ljava/lang/String; = "com.android.fitness.TRACK"

.field private static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FLAGS:I = 0xc2000

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

.field private final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 119
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 130
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 137
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 143
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 148
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 154
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 164
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 169
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 174
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 179
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    .line 195
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    .line 202
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    .line 216
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p4, "permissionManager"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 248
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 249
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 261
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    .line 262
    iput-object p4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 263
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .line 100
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1656
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .locals 6

    .line 1508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1509
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1510
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1511
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1513
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1514
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1515
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1517
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1518
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1519
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1521
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1522
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1523
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1526
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.embedded"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1527
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, "etc/default-permissions"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1528
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1529
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1532
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    new-array v2, v4, [Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    :goto_0
    return-object v2
.end method

.method private getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1268
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1269
    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1270
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 1271
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1273
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1209
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1210
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1209
    const v3, 0xc2000

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1212
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1216
    return-object v1

    .line 1218
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1213
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1223
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1224
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1223
    const v2, 0xc2000

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v0

    .line 1225
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1226
    return-object v1

    .line 1228
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1229
    .local v2, "handlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1230
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1231
    .local v4, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1233
    .local v5, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1

    .line 1234
    return-object v5

    .line 1229
    .end local v4    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v5    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1237
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 1242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v0, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1245
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    array-length v2, p1

    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v2, :cond_2

    aget-object v11, p1, v10

    .line 1248
    .local v11, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1251
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const v6, 0xc2000

    const/4 v8, 0x0

    .line 1252
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1250
    move-object v4, v1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1253
    .local v3, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    .line 1254
    goto :goto_1

    .line 1257
    :cond_0
    invoke-direct {p0, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1258
    .local v4, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1

    .line 1259
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    .end local v3    # "homeActivity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1263
    :cond_2
    return-object v0
.end method

.method private getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method private getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1282
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1283
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    nop

    :cond_0
    return-object v1

    .line 1285
    :cond_1
    return-object v1
.end method

.method private grantAllRuntimePermissions(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 331
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting all runtime permissions for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 333
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 335
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_0

    .line 336
    goto :goto_0

    .line 338
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V

    .line 339
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method

.method private grantDefaultPermissionExceptions(I)V
    .locals 11
    .param p1, "userId"    # I

    .line 1474
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1476
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1482
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1484
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    const/4 v0, 0x0

    .line 1487
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1488
    .local v1, "exceptionCount":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1489
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1490
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1491
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1492
    .local v6, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1493
    .local v7, "permissionGrantCount":I
    move-object v8, v3

    move v3, v2

    .local v3, "j":I
    .local v8, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    if-ge v3, v7, :cond_2

    .line 1494
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1495
    .local v9, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    if-nez v8, :cond_1

    .line 1496
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v10

    goto :goto_2

    .line 1498
    :cond_1
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 1500
    :goto_2
    iget-object v10, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1501
    iget-boolean v10, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    invoke-direct {p0, v5, v8, v10, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1493
    .end local v9    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1488
    .end local v3    # "j":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    .end local v7    # "permissionGrantCount":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object v3, v8

    goto :goto_0

    .line 1505
    .end local v0    # "i":I
    .end local v8    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 1484
    .end local v1    # "exceptionCount":I
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1084
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1087
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1089
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1006
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1008
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 1009
    .local v0, "isPhonePermFixed":Z
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1011
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1012
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1013
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1014
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1016
    .end local v0    # "isPhonePermFixed":Z
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1020
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1022
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1023
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1024
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1025
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1026
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1028
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "useOpenWifiPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1032
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1035
    :cond_0
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 101
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 399
    move/from16 v2, p1

    const-string v0, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default platform handlers for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 410
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v4, v0

    .line 411
    .local v4, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v5, v0

    .line 412
    .local v5, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v6, v0

    .line 413
    .local v6, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v7, v0

    .line 414
    .local v7, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v8, v0

    .line 415
    .local v8, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v9, v0

    .line 416
    .local v9, "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object v10, v0

    .line 417
    .local v10, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-eqz v5, :cond_0

    .line 420
    invoke-interface {v5, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 421
    .local v3, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 422
    invoke-interface {v4, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 423
    .local v11, "locationPackageNames":[Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_2

    .line 424
    invoke-interface {v6, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 425
    .local v12, "smsAppPackageNames":[Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_3

    .line 426
    invoke-interface {v7, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 427
    .local v13, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_3
    if-eqz v8, :cond_4

    .line 428
    invoke-interface {v8, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 429
    .local v14, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_4
    if-eqz v9, :cond_5

    .line 430
    invoke-interface {v9, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 431
    .local v15, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    :goto_5
    if-eqz v10, :cond_6

    .line 432
    const-string v0, "com.android.contacts"

    invoke-interface {v10, v0, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    move-object/from16 v17, v0

    .line 433
    .local v17, "contactsSyncAdapterPackages":[Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 434
    const-string v0, "com.android.calendar"

    invoke-interface {v10, v0, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    move-object/from16 v18, v0

    .line 437
    .local v18, "calendarSyncAdapterPackages":[Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v19, v4

    const/4 v4, 0x2

    .line 437
    .end local v4    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v19, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "installerPackageName":Ljava/lang/String;
    move-object/from16 v20, v5

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 440
    .local v5, "installerPackage":Landroid/content/pm/PackageParser$Package;
    .local v20, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v21, v4

    const/4 v4, 0x1

    .line 440
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .local v21, "installerPackageName":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 441
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 442
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 446
    :cond_8
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "verifierPackageName":Ljava/lang/String;
    move-object/from16 v22, v5

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 449
    .local v5, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .local v22, "installerPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v23, v4

    .line 449
    .end local v4    # "verifierPackageName":Ljava/lang/String;
    .local v23, "verifierPackageName":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 450
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 451
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 452
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 453
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 457
    :cond_9
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v24, v5

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "setupWizardPackageName":Ljava/lang/String;
    .local v24, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 460
    .local v4, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_a

    .line 461
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 462
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 463
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 464
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 465
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 469
    :cond_a
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v25, v4

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    .line 469
    .end local v4    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .local v25, "setupPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 470
    .local v4, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v26, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 472
    .local v5, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .local v26, "setupWizardPackageName":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 473
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 474
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 475
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 476
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 480
    :cond_b
    const-string/jumbo v0, "media"

    move-object/from16 v27, v4

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 482
    .local v4, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .local v27, "cameraIntent":Landroid/content/Intent;
    if-eqz v4, :cond_c

    .line 483
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v28, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 484
    .end local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .local v28, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_8

    .line 488
    .end local v28    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    :cond_c
    move-object/from16 v28, v5

    const/4 v5, 0x1

    .line 488
    .end local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v28    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    :goto_8
    const-string v0, "downloads"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 490
    .local v5, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_d

    .line 491
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v29, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_9

    .line 495
    :cond_d
    move-object/from16 v29, v4

    .line 495
    .end local v4    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .local v29, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    :goto_9
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 496
    .local v4, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v30, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 498
    .local v5, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .local v30, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_e

    .line 499
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 500
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v31, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_a

    .line 504
    :cond_e
    move-object/from16 v31, v4

    const/4 v4, 0x1

    .line 504
    .end local v4    # "downloadsUiIntent":Landroid/content/Intent;
    .local v31, "downloadsUiIntent":Landroid/content/Intent;
    :goto_a
    const-string v0, "com.android.externalstorage.documents"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 506
    .local v4, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_f

    .line 507
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v32, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_b

    .line 511
    :cond_f
    move-object/from16 v32, v5

    const/4 v5, 0x1

    .line 511
    .end local v5    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .local v32, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    :goto_b
    const-string v0, "com.android.defcontainer"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 513
    .local v5, "containerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_10

    .line 514
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v33, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_c

    .line 520
    :cond_10
    move-object/from16 v33, v4

    .line 520
    .end local v4    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .local v33, "storagePackage":Landroid/content/pm/PackageParser$Package;
    :goto_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x104012b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 522
    .local v4, "carrierPackage_1":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_11

    .line 523
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v34, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_d

    .line 526
    :cond_11
    move-object/from16 v34, v5

    .line 526
    .end local v5    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .local v34, "containerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x104012c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 528
    .local v5, "carrierPackage_2":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_12

    .line 529
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v35, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_e

    .line 532
    :cond_12
    move-object/from16 v35, v4

    .line 532
    .end local v4    # "carrierPackage_1":Landroid/content/pm/PackageParser$Package;
    .local v35, "carrierPackage_1":Landroid/content/pm/PackageParser$Package;
    :goto_e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x104012d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 534
    .local v4, "carrierPackage_3":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_13

    .line 535
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v36, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_f

    .line 538
    :cond_13
    move-object/from16 v36, v5

    .line 538
    .end local v5    # "carrierPackage_2":Landroid/content/pm/PackageParser$Package;
    .local v36, "carrierPackage_2":Landroid/content/pm/PackageParser$Package;
    :goto_f
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x104012e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 540
    .local v5, "carrierPackage_4":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_14

    .line 541
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v37, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_10

    .line 546
    :cond_14
    move-object/from16 v37, v4

    .line 546
    .end local v4    # "carrierPackage_3":Landroid/content/pm/PackageParser$Package;
    .local v37, "carrierPackage_3":Landroid/content/pm/PackageParser$Package;
    :goto_10
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 547
    .local v4, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v38, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 549
    .local v5, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .local v38, "carrierPackage_4":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_15

    .line 550
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 551
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v39, v4

    const/4 v4, 0x1

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_11

    .line 555
    :cond_15
    move-object/from16 v39, v4

    .line 555
    .end local v4    # "certInstallerIntent":Landroid/content/Intent;
    .local v39, "certInstallerIntent":Landroid/content/Intent;
    :goto_11
    if-nez v13, :cond_17

    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "dialerIntent":Landroid/content/Intent;
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 559
    .local v4, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_16

    .line 560
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 562
    .end local v0    # "dialerIntent":Landroid/content/Intent;
    .end local v4    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_16
    nop

    .line 572
    move-object/from16 v41, v5

    goto :goto_13

    .line 563
    :cond_17
    array-length v0, v13

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v0, :cond_19

    move/from16 v40, v0

    aget-object v0, v13, v4

    .line 564
    .local v0, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v41, v5

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 565
    .local v5, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .local v41, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_18

    .line 566
    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 563
    .end local v0    # "dialerAppPackageName":Ljava/lang/String;
    .end local v5    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_18
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v40

    move-object/from16 v5, v41

    goto :goto_12

    .line 572
    .end local v41    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .local v5, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_19
    move-object/from16 v41, v5

    .line 572
    .end local v5    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v41    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_13
    if-eqz v14, :cond_1b

    .line 573
    array-length v0, v14

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v0, :cond_1b

    aget-object v5, v14, v4

    .line 574
    .local v5, "simCallManagerPackageName":Ljava/lang/String;
    nop

    .line 575
    move/from16 v42, v0

    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 576
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1a

    .line 577
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V

    .line 573
    .end local v0    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "simCallManagerPackageName":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v42

    goto :goto_14

    .line 584
    :cond_1b
    if-eqz v15, :cond_1d

    .line 585
    array-length v0, v15

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v0, :cond_1d

    aget-object v5, v15, v4

    .line 586
    .local v5, "useOpenWifiPackageName":Ljava/lang/String;
    nop

    .line 587
    move/from16 v43, v0

    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 588
    .local v0, "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1c

    .line 589
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 585
    .end local v0    # "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "useOpenWifiPackageName":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v43

    goto :goto_15

    .line 596
    :cond_1d
    if-nez v12, :cond_1f

    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "smsIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 601
    .local v4, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1e

    .line 602
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 604
    .end local v0    # "smsIntent":Landroid/content/Intent;
    .end local v4    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1e
    goto :goto_17

    .line 605
    :cond_1f
    array-length v0, v12

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_21

    aget-object v5, v12, v4

    .line 606
    .local v5, "smsPackageName":Ljava/lang/String;
    move/from16 v44, v0

    invoke-direct {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 607
    .local v0, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_20

    .line 608
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 605
    .end local v0    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "smsPackageName":Ljava/lang/String;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v44

    goto :goto_16

    .line 614
    :cond_21
    :goto_17
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 615
    .local v4, "cbrIntent":Landroid/content/Intent;
    nop

    .line 616
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 617
    .local v5, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_22

    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 618
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 622
    :cond_22
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v45, v4

    const-string v4, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    .line 622
    .end local v4    # "cbrIntent":Landroid/content/Intent;
    .local v45, "cbrIntent":Landroid/content/Intent;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 623
    .local v4, "carrierProvIntent":Landroid/content/Intent;
    nop

    .line 624
    move-object/from16 v46, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 625
    .local v5, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .local v46, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_23

    .line 626
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 627
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v47, v4

    const/4 v4, 0x0

    invoke-direct {v1, v5, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_18

    .line 631
    :cond_23
    move-object/from16 v47, v4

    .line 631
    .end local v4    # "carrierProvIntent":Landroid/content/Intent;
    .local v47, "carrierProvIntent":Landroid/content/Intent;
    :goto_18
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 632
    .local v4, "calendarIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    move-object/from16 v48, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 635
    .local v5, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .local v48, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_24

    .line 636
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 637
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 638
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 642
    :cond_24
    const-string v0, "com.android.calendar"

    move-object/from16 v49, v4

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 644
    .local v4, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .local v49, "calendarIntent":Landroid/content/Intent;
    if-eqz v4, :cond_25

    .line 645
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 646
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v50, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 648
    .end local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .local v50, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_19

    .line 652
    .end local v50    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    :cond_25
    move-object/from16 v50, v5

    .line 652
    .end local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v50    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    :goto_19
    move-object/from16 v51, v4

    move-object/from16 v5, v18

    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 654
    .end local v18    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .local v4, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v5, "calendarSyncAdapterPackages":[Ljava/lang/String;
    .local v51, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v52, v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 655
    .local v5, "calendarSyncAdapterCount":I
    .local v52, "calendarSyncAdapterPackages":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 655
    .local v0, "i":I
    :goto_1a
    if-ge v0, v5, :cond_27

    .line 656
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v53, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 657
    .local v4, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .local v53, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_26

    .line 658
    move/from16 v54, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 658
    .end local v5    # "calendarSyncAdapterCount":I
    .local v54, "calendarSyncAdapterCount":I
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 658
    .end local v4    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    goto :goto_1b

    .line 655
    .end local v54    # "calendarSyncAdapterCount":I
    .restart local v5    # "calendarSyncAdapterCount":I
    :cond_26
    move/from16 v54, v5

    .line 655
    .end local v5    # "calendarSyncAdapterCount":I
    .restart local v54    # "calendarSyncAdapterCount":I
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v53

    move/from16 v5, v54

    goto :goto_1a

    .line 663
    .end local v0    # "i":I
    .end local v53    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v54    # "calendarSyncAdapterCount":I
    .local v4, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v5    # "calendarSyncAdapterCount":I
    :cond_27
    move-object/from16 v53, v4

    move/from16 v54, v5

    .line 663
    .end local v4    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v5    # "calendarSyncAdapterCount":I
    .restart local v53    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v54    # "calendarSyncAdapterCount":I
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 664
    .local v4, "contactsIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 667
    .local v5, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_28

    .line 668
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 669
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 670
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 674
    :cond_28
    move-object/from16 v55, v4

    move-object/from16 v56, v5

    move-object/from16 v4, v17

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 676
    .end local v17    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .local v4, "contactsSyncAdapterPackages":[Ljava/lang/String;
    .local v5, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v55, "contactsIntent":Landroid/content/Intent;
    .local v56, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v57, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 677
    .local v4, "contactsSyncAdapterCount":I
    .local v57, "contactsSyncAdapterPackages":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 677
    .restart local v0    # "i":I
    :goto_1c
    if-ge v0, v4, :cond_2a

    .line 678
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v58, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 679
    .local v4, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .local v58, "contactsSyncAdapterCount":I
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_29

    .line 680
    move-object/from16 v59, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 680
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v59, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 680
    .end local v4    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    goto :goto_1d

    .line 677
    .end local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_29
    move-object/from16 v59, v5

    .line 677
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v58

    move-object/from16 v5, v59

    goto :goto_1c

    .line 685
    .end local v0    # "i":I
    .end local v58    # "contactsSyncAdapterCount":I
    .end local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v4, "contactsSyncAdapterCount":I
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2a
    move/from16 v58, v4

    move-object/from16 v59, v5

    .line 685
    .end local v4    # "contactsSyncAdapterCount":I
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v58    # "contactsSyncAdapterCount":I
    .restart local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    const-string v0, "com.android.contacts"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 687
    .local v4, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_2b

    .line 688
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 690
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 692
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 696
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 698
    .local v5, "deviceProvisionIntent":Landroid/content/Intent;
    nop

    .line 699
    move-object/from16 v60, v4

    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 700
    .local v4, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .local v60, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_2c

    .line 701
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 702
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 706
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v61, v4

    const-string v4, "android.intent.action.MAIN"

    .line 706
    .end local v4    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .local v61, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 707
    .local v4, "mapsIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_MAPS"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    move-object/from16 v62, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 710
    .local v5, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .local v62, "deviceProvisionIntent":Landroid/content/Intent;
    if-eqz v5, :cond_2d

    .line 711
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 712
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 716
    :cond_2d
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v63, v4

    const-string v4, "android.intent.action.MAIN"

    .line 716
    .end local v4    # "mapsIntent":Landroid/content/Intent;
    .local v63, "mapsIntent":Landroid/content/Intent;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 717
    .local v4, "galleryIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    move-object/from16 v64, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 720
    .local v5, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .local v64, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2e

    .line 721
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 722
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 726
    :cond_2e
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v65, v4

    const-string v4, "android.intent.action.MAIN"

    .line 726
    .end local v4    # "galleryIntent":Landroid/content/Intent;
    .local v65, "galleryIntent":Landroid/content/Intent;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 727
    .local v4, "emailIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.APP_EMAIL"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    move-object/from16 v66, v5

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 730
    .local v5, "emailPackage":Landroid/content/pm/PackageParser$Package;
    .local v66, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2f

    .line 731
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 732
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 733
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 737
    :cond_2f
    const/4 v0, 0x0

    .line 738
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v67, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 738
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v67, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v68, v4

    const/4 v4, 0x4

    .line 738
    .end local v4    # "emailIntent":Landroid/content/Intent;
    .local v68, "emailIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v4, :cond_30

    .line 741
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 741
    .end local v67    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_1e

    .line 743
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v67    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_30
    move-object/from16 v0, v67

    .line 743
    .end local v67    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :goto_1e
    if-nez v0, :cond_31

    .line 744
    move-object/from16 v69, v0

    new-instance v0, Landroid/content/Intent;

    .line 744
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v69, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v70, v4

    const-string v4, "android.intent.action.MAIN"

    .line 744
    .end local v4    # "defaultBrowserPackage":Ljava/lang/String;
    .local v70, "defaultBrowserPackage":Ljava/lang/String;
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v0, "browserIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 749
    .end local v69    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object v4, v0

    goto :goto_1f

    .line 749
    .end local v70    # "defaultBrowserPackage":Ljava/lang/String;
    .restart local v4    # "defaultBrowserPackage":Ljava/lang/String;
    :cond_31
    move-object/from16 v69, v0

    move-object/from16 v70, v4

    move-object/from16 v4, v69

    .line 749
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v4, "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v70    # "defaultBrowserPackage":Ljava/lang/String;
    :goto_1f
    if-eqz v4, :cond_32

    .line 750
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 751
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 755
    :cond_32
    if-eqz v3, :cond_35

    .line 756
    array-length v0, v3

    move-object/from16 v71, v4

    const/4 v4, 0x0

    .line 756
    .end local v4    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v71, "browserPackage":Landroid/content/pm/PackageParser$Package;
    :goto_20
    if-ge v4, v0, :cond_34

    move/from16 v72, v0

    aget-object v0, v3, v4

    .line 757
    .local v0, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v73, v3

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 759
    .local v3, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .local v73, "voiceInteractPackageNames":[Ljava/lang/String;
    if-eqz v3, :cond_33

    .line 760
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_33

    .line 761
    move-object/from16 v74, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 761
    .end local v0    # "voiceInteractPackageName":Ljava/lang/String;
    .local v74, "voiceInteractPackageName":Ljava/lang/String;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 763
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 765
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 767
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 769
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 771
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 756
    .end local v3    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v74    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_33
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v72

    move-object/from16 v3, v73

    goto :goto_20

    .line 777
    .end local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    .local v3, "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_34
    move-object/from16 v73, v3

    .line 777
    .end local v3    # "voiceInteractPackageNames":[Ljava/lang/String;
    .restart local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    goto :goto_21

    .line 777
    .end local v71    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    .restart local v3    # "voiceInteractPackageNames":[Ljava/lang/String;
    .restart local v4    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_35
    move-object/from16 v73, v3

    move-object/from16 v71, v4

    .line 777
    .end local v3    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v4    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v71    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_21
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 779
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v0, "globalSearchIntent":Landroid/content/Intent;
    nop

    .line 781
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 783
    .local v3, "globalSearchPickerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_36

    .line 784
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 785
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v75, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 787
    .end local v5    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .local v75, "emailPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 787
    .end local v0    # "globalSearchIntent":Landroid/content/Intent;
    .end local v3    # "globalSearchPickerPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_22

    .line 793
    .end local v75    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    :cond_36
    move-object/from16 v75, v5

    .line 793
    .end local v5    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v75    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    :goto_22
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 794
    .local v3, "voiceRecoIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 797
    .local v4, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_37

    .line 798
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 799
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 803
    :cond_37
    if-eqz v11, :cond_39

    .line 804
    array-length v0, v11

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v0, :cond_39

    move/from16 v76, v0

    aget-object v0, v11, v5

    .line 805
    .local v0, "packageName":Ljava/lang/String;
    move-object/from16 v77, v3

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 806
    .local v3, "locationPackage":Landroid/content/pm/PackageParser$Package;
    .local v77, "voiceRecoIntent":Landroid/content/Intent;
    if-eqz v3, :cond_38

    .line 807
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_38

    .line 808
    move-object/from16 v78, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 808
    .end local v0    # "packageName":Ljava/lang/String;
    .local v78, "packageName":Ljava/lang/String;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 809
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 810
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 811
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 812
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 813
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v79, v4

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 815
    .end local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .local v79, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 816
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 817
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 817
    .end local v3    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v78    # "packageName":Ljava/lang/String;
    goto :goto_24

    .line 804
    .end local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :cond_38
    move-object/from16 v79, v4

    .line 804
    .end local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :goto_24
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v76

    move-object/from16 v3, v77

    move-object/from16 v4, v79

    goto :goto_23

    .line 823
    .end local v77    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .local v3, "voiceRecoIntent":Landroid/content/Intent;
    .restart local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :cond_39
    move-object/from16 v77, v3

    move-object/from16 v79, v4

    .line 823
    .end local v3    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v4    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v77    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 824
    .local v3, "musicIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    new-instance v0, Ljava/io/File;

    const-string v4, "foo.mp3"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "audio/mpeg"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 829
    .local v4, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3a

    .line 830
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 831
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 835
    :cond_3a
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 836
    .local v5, "homeIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-string v0, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    move-object/from16 v80, v3

    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 840
    .local v3, "homePackage":Landroid/content/pm/PackageParser$Package;
    .local v80, "musicIntent":Landroid/content/Intent;
    if-eqz v3, :cond_3b

    .line 841
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 842
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v81, v4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_25

    .line 846
    :cond_3b
    move-object/from16 v81, v4

    const/4 v4, 0x0

    .line 846
    .end local v4    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .local v81, "musicPackage":Landroid/content/pm/PackageParser$Package;
    :goto_25
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v82, v3

    const-string v3, "android.hardware.type.watch"

    .line 846
    .end local v3    # "homePackage":Landroid/content/pm/PackageParser$Package;
    .local v82, "homePackage":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 848
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .local v0, "wearHomeIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME_MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 854
    .local v3, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3c

    .line 855
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 856
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v83, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 858
    .end local v5    # "homeIntent":Landroid/content/Intent;
    .local v83, "homeIntent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 859
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 861
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_26

    .line 866
    .end local v83    # "homeIntent":Landroid/content/Intent;
    .restart local v5    # "homeIntent":Landroid/content/Intent;
    :cond_3c
    move-object/from16 v83, v5

    .line 866
    .end local v5    # "homeIntent":Landroid/content/Intent;
    .restart local v83    # "homeIntent":Landroid/content/Intent;
    :goto_26
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.fitness.TRACK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .local v4, "trackIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 869
    .local v5, "trackPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_3e

    .line 870
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3e

    .line 871
    move-object/from16 v84, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 871
    .end local v0    # "wearHomeIntent":Landroid/content/Intent;
    .local v84, "wearHomeIntent":Landroid/content/Intent;
    move-object/from16 v85, v3

    const/4 v3, 0x0

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 872
    .end local v3    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    .local v85, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 872
    .end local v4    # "trackIntent":Landroid/content/Intent;
    .end local v5    # "trackPackage":Landroid/content/pm/PackageParser$Package;
    .end local v84    # "wearHomeIntent":Landroid/content/Intent;
    .end local v85    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_27

    .line 877
    .end local v83    # "homeIntent":Landroid/content/Intent;
    .local v5, "homeIntent":Landroid/content/Intent;
    :cond_3d
    move-object/from16 v83, v5

    .line 877
    .end local v5    # "homeIntent":Landroid/content/Intent;
    .restart local v83    # "homeIntent":Landroid/content/Intent;
    :cond_3e
    :goto_27
    const-string v0, "com.android.printspooler"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 879
    .local v3, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3f

    .line 880
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 881
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 885
    :cond_3f
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 886
    .local v4, "emergencyInfoIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 888
    .local v5, "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_40

    .line 889
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 890
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v86, v3

    const/4 v3, 0x1

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 891
    .end local v3    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .local v86, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_28

    .line 895
    .end local v86    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_40
    move-object/from16 v86, v3

    .line 895
    .end local v3    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v86    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_28
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 896
    .local v3, "nfcTagIntent":Landroid/content/Intent;
    const-string/jumbo v0, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    move-object/from16 v87, v4

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 899
    .local v4, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .local v87, "emergencyInfoIntent":Landroid/content/Intent;
    if-eqz v4, :cond_41

    .line 900
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 901
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v88, v3

    const/4 v3, 0x0

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 902
    .end local v3    # "nfcTagIntent":Landroid/content/Intent;
    .local v88, "nfcTagIntent":Landroid/content/Intent;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_29

    .line 906
    .end local v88    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v3    # "nfcTagIntent":Landroid/content/Intent;
    :cond_41
    move-object/from16 v88, v3

    .line 906
    .end local v3    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v88    # "nfcTagIntent":Landroid/content/Intent;
    :goto_29
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 907
    .local v3, "storageManagerIntent":Landroid/content/Intent;
    move-object/from16 v89, v4

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 909
    .local v4, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .local v89, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_42

    .line 910
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 911
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v90, v3

    const/4 v3, 0x1

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_2a

    .line 915
    :cond_42
    move-object/from16 v90, v3

    .line 915
    .end local v3    # "storageManagerIntent":Landroid/content/Intent;
    .local v90, "storageManagerIntent":Landroid/content/Intent;
    :goto_2a
    const-string v0, "com.android.companiondevicemanager"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 917
    .local v3, "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_43

    .line 918
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 919
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v91, v4

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_2b

    .line 924
    :cond_43
    move-object/from16 v91, v4

    .line 924
    .end local v4    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .local v91, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    :goto_2b
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 925
    .local v4, "ringtonePickerIntent":Landroid/content/Intent;
    nop

    .line 926
    move-object/from16 v92, v3

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 927
    .local v3, "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .local v92, "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_44

    .line 928
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 929
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v93, v4

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_2c

    .line 934
    :cond_44
    move-object/from16 v93, v4

    .line 934
    .end local v4    # "ringtonePickerIntent":Landroid/content/Intent;
    .local v93, "ringtonePickerIntent":Landroid/content/Intent;
    :goto_2c
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 935
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v4

    .line 936
    .local v4, "textClassifierPackageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 937
    nop

    .line 938
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 939
    .local v0, "textClassifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_45

    .line 940
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_45

    .line 941
    move-object/from16 v94, v3

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 941
    .end local v3    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .local v94, "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v95, v4

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 942
    .end local v4    # "textClassifierPackageName":Ljava/lang/String;
    .local v95, "textClassifierPackageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 943
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 944
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 945
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 945
    .end local v0    # "textClassifierPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_2d

    .line 952
    .end local v94    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v95    # "textClassifierPackageName":Ljava/lang/String;
    .restart local v3    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "textClassifierPackageName":Ljava/lang/String;
    :cond_45
    move-object/from16 v94, v3

    move-object/from16 v95, v4

    const/4 v4, 0x0

    .line 952
    .end local v3    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "textClassifierPackageName":Ljava/lang/String;
    .restart local v94    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v95    # "textClassifierPackageName":Ljava/lang/String;
    :goto_2d
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/16 v3, 0xc

    aput v3, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 954
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 955
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 956
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v96, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 956
    .end local v0    # "packageList":Landroid/content/pm/PackageList;
    .local v96, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 957
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_48

    move-object/from16 v97, v3

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_49

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v98, v4

    const/16 v4, 0x16

    .end local v4    # "packageName":Ljava/lang/String;
    .local v98, "packageName":Ljava/lang/String;
    if-le v3, v4, :cond_49

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v3, :cond_49

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 961
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_49

    .line 962
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 963
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v99, v16

    .line 964
    .local v99, "requestedPerm":Ljava/lang/String;
    move-object/from16 v100, v4

    move-object/from16 v4, v99

    invoke-static {v4}, Landroid/util/Permission;->isCTADefaultGrantedForSDK23(Ljava/lang/String;)Z

    move-result v16

    .line 964
    .end local v99    # "requestedPerm":Ljava/lang/String;
    .local v4, "requestedPerm":Ljava/lang/String;
    if-eqz v16, :cond_46

    .line 965
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 967
    .end local v4    # "requestedPerm":Ljava/lang/String;
    :cond_46
    nop

    .line 963
    move-object/from16 v4, v100

    goto :goto_2f

    .line 968
    :cond_47
    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 968
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v98    # "packageName":Ljava/lang/String;
    goto :goto_30

    .line 970
    :cond_48
    move-object/from16 v97, v3

    .line 955
    :cond_49
    :goto_30
    move-object/from16 v0, v96

    move-object/from16 v3, v97

    goto :goto_2e

    .line 974
    .end local v96    # "packageList":Landroid/content/pm/PackageList;
    :cond_4a
    goto :goto_31

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DefaultPermGrantPolicy"

    const-string v4, "error while grant permission"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 982
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4b
    :goto_31
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    aput v3, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 983
    const-string v0, "com.google.android.syncadapters.contacts"

    .line 984
    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 985
    .local v0, "googleContactsSync":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_4c

    .line 986
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 987
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 993
    .end local v0    # "googleContactsSync":Landroid/content/pm/PackageParser$Package;
    :cond_4c
    const-string v0, "com.android.sharedstoragebackup"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 995
    .local v0, "sharedStorageBackupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_4d

    .line 996
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 999
    :cond_4d
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    if-eqz v3, :cond_4e

    .line 1000
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    invoke-interface {v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;->onDefaultRuntimePermissionsGranted(I)V

    .line 1002
    :cond_4e
    return-void

    .line 417
    .end local v0    # "sharedStorageBackupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v7    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v8    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v9    # "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v10    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v11    # "locationPackageNames":[Ljava/lang/String;
    .end local v12    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v13    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v14    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v15    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v19    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v20    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v21    # "installerPackageName":Ljava/lang/String;
    .end local v22    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v23    # "verifierPackageName":Ljava/lang/String;
    .end local v24    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v25    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v26    # "setupWizardPackageName":Ljava/lang/String;
    .end local v27    # "cameraIntent":Landroid/content/Intent;
    .end local v28    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v29    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v30    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v31    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v32    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v33    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v34    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v35    # "carrierPackage_1":Landroid/content/pm/PackageParser$Package;
    .end local v36    # "carrierPackage_2":Landroid/content/pm/PackageParser$Package;
    .end local v37    # "carrierPackage_3":Landroid/content/pm/PackageParser$Package;
    .end local v38    # "carrierPackage_4":Landroid/content/pm/PackageParser$Package;
    .end local v39    # "certInstallerIntent":Landroid/content/Intent;
    .end local v41    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v45    # "cbrIntent":Landroid/content/Intent;
    .end local v46    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v47    # "carrierProvIntent":Landroid/content/Intent;
    .end local v48    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v49    # "calendarIntent":Landroid/content/Intent;
    .end local v50    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v51    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v52    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v53    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v54    # "calendarSyncAdapterCount":I
    .end local v55    # "contactsIntent":Landroid/content/Intent;
    .end local v56    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v57    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v58    # "contactsSyncAdapterCount":I
    .end local v59    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v60    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v61    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .end local v62    # "deviceProvisionIntent":Landroid/content/Intent;
    .end local v63    # "mapsIntent":Landroid/content/Intent;
    .end local v64    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v65    # "galleryIntent":Landroid/content/Intent;
    .end local v66    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v68    # "emailIntent":Landroid/content/Intent;
    .end local v70    # "defaultBrowserPackage":Ljava/lang/String;
    .end local v71    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v75    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .end local v77    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v80    # "musicIntent":Landroid/content/Intent;
    .end local v81    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .end local v82    # "homePackage":Landroid/content/pm/PackageParser$Package;
    .end local v83    # "homeIntent":Landroid/content/Intent;
    .end local v86    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v87    # "emergencyInfoIntent":Landroid/content/Intent;
    .end local v88    # "nfcTagIntent":Landroid/content/Intent;
    .end local v89    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .end local v90    # "storageManagerIntent":Landroid/content/Intent;
    .end local v91    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .end local v92    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v93    # "ringtonePickerIntent":Landroid/content/Intent;
    .end local v94    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v95    # "textClassifierPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 382
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to platform components for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 384
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 386
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_1

    .line 387
    goto :goto_0

    .line 389
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 391
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    goto :goto_0

    .line 394
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V

    .line 395
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_0

    .line 396
    :cond_3
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1290
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1291
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1295
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1296
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 17
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "ignoreSystemPackage"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1345
    move/from16 v8, p5

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1346
    return-void

    .line 1349
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1350
    .local v2, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1358
    .local v3, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p4, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1359
    iget-object v4, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1360
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1361
    .local v4, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_2

    .line 1362
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1363
    return-void

    .line 1365
    :cond_1
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1366
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, v5

    .line 1367
    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1372
    .end local v2    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .local v9, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    move-object v9, v2

    move-object v10, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 1373
    .local v11, "grantablePermissionCount":I
    const/4 v12, 0x0

    move v2, v12

    .local v2, "i":I
    :goto_0
    move v13, v2

    .end local v2    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_c

    .line 1374
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 1378
    .local v7, "permission":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1379
    goto/16 :goto_3

    .line 1382
    :cond_3
    move-object/from16 v6, p2

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1383
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7, v3, v8}, Landroid/content/pm/PackageManagerInternal;->getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 1392
    .local v14, "flags":I
    if-eqz v14, :cond_5

    if-eqz p4, :cond_4

    goto :goto_1

    .line 1435
    :cond_4
    move-object/from16 v16, v7

    goto :goto_2

    .line 1396
    :cond_5
    :goto_1
    and-int/lit8 v2, v14, 0x4

    if-eqz v2, :cond_6

    .line 1397
    goto :goto_3

    .line 1405
    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xc

    aput v3, v2, v12

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_7

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1406
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1407
    invoke-static {v2}, Landroid/util/Permission;->isReserveSystemApps(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_9

    .line 1413
    goto :goto_3

    .line 1417
    :cond_9
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v7, v8, v12}, Landroid/content/pm/PackageManagerInternal;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1424
    const/16 v2, 0x20

    .line 1425
    .local v2, "newFlags":I
    if-eqz p3, :cond_a

    .line 1426
    or-int/lit8 v2, v2, 0x10

    .line 1429
    .end local v2    # "newFlags":I
    .local v15, "newFlags":I
    :cond_a
    move v15, v2

    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v3, v7

    move v5, v15

    move v6, v15

    move-object/from16 v16, v7

    move v7, v8

    .end local v7    # "permission":Ljava/lang/String;
    .local v16, "permission":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1435
    .end local v15    # "newFlags":I
    :goto_2
    and-int/lit8 v2, v14, 0x20

    if-eqz v2, :cond_b

    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_b

    if-nez p3, :cond_b

    .line 1442
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v3, v16

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1373
    .end local v14    # "flags":I
    .end local v16    # "permission":Ljava/lang/String;
    :cond_b
    :goto_3
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .line 1447
    .end local v2    # "i":I
    :cond_c
    return-void
.end method

.method private grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 315
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 316
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 318
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_0

    .line 319
    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 326
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 328
    :cond_3
    return-void
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1450
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    .line 1451
    return v1

    .line 1453
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1454
    return v2

    .line 1456
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1457
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1458
    .local v0, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    .line 1459
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 1460
    return v2

    .line 1462
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 1463
    return v2

    .line 1465
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v3

    .line 1467
    .local v3, "systemPackageName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1468
    .local v4, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v7, 0x4

    .line 1469
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 1468
    :cond_4
    move v1, v2

    goto :goto_1

    .line 1469
    :cond_5
    :goto_0
    nop

    .line 1468
    :goto_1
    return v1
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1571
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1573
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1574
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1575
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1576
    goto :goto_0

    .line 1578
    :cond_2
    const-string v1, "exceptions"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1579
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_0

    .line 1581
    :cond_3
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1584
    :cond_4
    return-void
.end method

.method private parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1588
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1590
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1590
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1591
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 1592
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1593
    goto :goto_0

    .line 1595
    :cond_2
    const-string v1, "exception"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1596
    const/4 v1, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 1599
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1600
    .local v3, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v3, :cond_5

    .line 1602
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1603
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v4, :cond_3

    .line 1604
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1606
    goto :goto_0

    .line 1610
    :cond_3
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1611
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1614
    goto :goto_0

    .line 1616
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 1617
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1621
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    goto :goto_0

    .line 1622
    :cond_6
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exceptions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1625
    :cond_7
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1629
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1631
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1631
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1632
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1633
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1634
    goto :goto_0

    .line 1637
    :cond_2
    const-string/jumbo v1, "permission"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1638
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1639
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1640
    const-string v3, "DefaultPermGrantPolicy"

    const-string v4, "Mandatory name attribute missing for permission tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1642
    goto :goto_0

    .line 1645
    :cond_3
    const-string v3, "fixed"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1647
    .local v3, "fixed":Z
    new-instance v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v4, v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;Z)V

    .line 1648
    .local v4, "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "fixed":Z
    .end local v4    # "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    goto :goto_0

    .line 1650
    :cond_4
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exception>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1653
    :cond_5
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 1537
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1538
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1539
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v2

    .line 1542
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1545
    .local v2, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 1546
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1547
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1547
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    goto :goto_3

    .line 1551
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1552
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    goto :goto_3

    .line 1556
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1555
    .local v5, "str":Ljava/io/InputStream;
    nop

    .line 1558
    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1559
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1560
    invoke-direct {p0, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1561
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1563
    .end local v5    # "str":Ljava/io/InputStream;
    goto :goto_3

    .line 1561
    .restart local v5    # "str":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    goto :goto_1

    .line 1555
    :catch_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1561
    :goto_1
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :goto_2
    throw v7
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v5    # "str":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    .line 1562
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "DefaultPermGrantPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1545
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1566
    :cond_4
    return-object v2
.end method

.method private revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1300
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    return-void

    .line 1303
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1305
    .local v0, "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1307
    .local v2, "permission":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1308
    goto :goto_0

    .line 1311
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, p4}, Landroid/content/pm/PackageManagerInternal;->getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 1315
    .local v9, "flags":I
    and-int/lit8 v3, v9, 0x20

    if-nez v3, :cond_2

    .line 1316
    goto :goto_0

    .line 1319
    :cond_2
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_3

    .line 1320
    goto :goto_0

    .line 1325
    :cond_3
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_4

    if-nez p3, :cond_4

    .line 1326
    goto :goto_0

    .line 1328
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p4, v5}, Landroid/content/pm/PackageManagerInternal;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1338
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v6, 0x20

    const/4 v7, 0x0

    move-object v4, v2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1340
    .end local v2    # "permission":Ljava/lang/String;
    .end local v9    # "flags":I
    goto :goto_0

    .line 1341
    :cond_5
    return-void
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(I)V

    .line 312
    return-void
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1170
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to active LUI app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    if-nez p1, :cond_0

    .line 1172
    return-void

    .line 1174
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1175
    .local v0, "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1176
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1177
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1179
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1196
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default browser for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    if-nez p1, :cond_0

    .line 1198
    return-void

    .line 1200
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1201
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1202
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1203
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1205
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1054
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default dialer app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    if-nez p1, :cond_0

    .line 1056
    return-void

    .line 1058
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1059
    .local v0, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1060
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1061
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1062
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1063
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1064
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1065
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1067
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1092
    if-nez p1, :cond_0

    .line 1093
    return-void

    .line 1095
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1096
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1097
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V

    .line 1099
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1038
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default sms app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    if-nez p1, :cond_0

    .line 1040
    return-void

    .line 1042
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1043
    .local v0, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1044
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1045
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1046
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1047
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1048
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1049
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1051
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1070
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    if-nez p1, :cond_0

    .line 1072
    return-void

    .line 1074
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1075
    .local v0, "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1076
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1080
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1102
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    if-nez p1, :cond_0

    .line 1104
    return-void

    .line 1106
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1107
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1108
    .local v3, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1109
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1110
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1111
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1112
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1106
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "carrierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1115
    :cond_2
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1118
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    if-nez p1, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1123
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1124
    .local v3, "imsServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1125
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1126
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1127
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1128
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1129
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1130
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1122
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "imsServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    :cond_2
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1137
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled data services for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    if-nez p1, :cond_0

    .line 1139
    return-void

    .line 1141
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1142
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1143
    .local v3, "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1144
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1147
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1148
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1141
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1151
    :cond_2
    return-void
.end method

.method public grantSystemAppPermissions(I)V
    .locals 11
    .param p1, "userId"    # I

    .line 349
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to prebuilt system apps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 351
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 353
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_1

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 357
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 358
    invoke-static {v4}, Landroid/util/Permission;->isReserveSystemApps(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    :cond_2
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    goto :goto_0

    .line 363
    :cond_3
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v10, v4

    .line 364
    .local v10, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 365
    .local v5, "permission":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 366
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_4

    .line 367
    goto :goto_1

    .line 369
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 370
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_5
    goto :goto_1

    .line 373
    :cond_6
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 374
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, v3

    move-object v6, v10

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 376
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    goto :goto_0

    .line 377
    :cond_8
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1155
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    if-nez p1, :cond_0

    .line 1157
    return-void

    .line 1159
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1160
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1161
    .local v3, "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1162
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1163
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1164
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1159
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1167
    :cond_2
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1182
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    if-nez p1, :cond_0

    .line 1184
    return-void

    .line 1186
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1187
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1188
    .local v3, "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1189
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1190
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1186
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1193
    :cond_2
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 344
    return-void
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 285
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 281
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSyncAdapterPackagesProvider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 303
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 297
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
