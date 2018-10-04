.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "TextServicesManager.java"


# static fields
.field private static final DBG:Z = false

.field public static final DISABLE_PER_PROFILE_SPELL_CHECKER:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/view/textservice/TextServicesManager;


# instance fields
.field private final mService:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "textservices"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    return-void
.end method

.method public static getInstance()Landroid/view/textservice/TextServicesManager;
    .locals 3

    const-class v0, Landroid/view/textservice/TextServicesManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/view/textservice/TextServicesManager;

    invoke-direct {v1}, Landroid/view/textservice/TextServicesManager;-><init>()V

    sput-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v0}, Lcom/android/internal/textservice/ITextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v0}, Lcom/android/internal/textservice/ITextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .locals 10

    if-eqz p3, :cond_c

    if-nez p4, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale should not be null if you don\'t refer settings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v1, v0}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p4, :cond_7

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    if-eqz p2, :cond_a

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v3, :cond_6

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_3

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-virtual {v1, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v2, v6

    goto :goto_3

    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v3, :cond_9

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v2, v6

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-nez v2, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Landroid/view/textservice/SpellCheckerSession;

    iget-object v3, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-direct {v0, v1, v3, p3}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)V

    :try_start_1
    iget-object v3, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v7

    move-object v8, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/textservice/ITextServicesManager;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catch_1
    move-exception v1

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
