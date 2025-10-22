.class public Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PreferenceIndexSqliteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexTable;,
        Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexFtsTable;
    }
.end annotation


# static fields
.field private static final CREATE_FTS_TABLE:Ljava/lang/String; = "CREATE VIRTUAL TABLE preference_index_fts USING fts4 (content=\'preference_index\', title);"

.field private static final CREATE_TABLE_PREFERENCE_INDEX:Ljava/lang/String; = "CREATE TABLE preference_index (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,title TEXT NOT NULL,fragment_class TEXT NOT NULL);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "preference_index.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final LOOKUP_SQL:Ljava/lang/String; = "SELECT * FROM preference_index WHERE _id IN (SELECT docid FROM preference_index_fts WHERE preference_index_fts MATCH ?) AND fragment_class IN("

.field private static final REBUILD_FTS_SQL:Ljava/lang/String; = "INSERT INTO preference_index_fts(preference_index_fts) VALUES(\'rebuild\')"

.field private static sIndexed:Z

.field private static sInstance:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sIndexed:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "preference_index.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private buildLookupSQL(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetFragments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    .local p1, "targetFragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM preference_index WHERE _id IN (SELECT docid FROM preference_index_fts WHERE preference_index_fts MATCH ?) AND fragment_class IN("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    .local v2, "fragment":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .end local v2    # "fragment":Ljava/lang/String;
    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 136
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private clearDatabase()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "preference_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sInstance:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sInstance:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    .line 71
    :cond_0
    sget-object v1, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sInstance:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 67
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private shouldUpdateIndex()Z
    .locals 1

    .line 148
    sget-boolean v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sIndexed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private updateIndex()V
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->clearDatabase()V

    .line 153
    new-instance v0, Lcom/afwsamples/testdpc/search/PreferenceCrawler;

    iget-object v1, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/search/PreferenceCrawler;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "preferenceCrawler":Lcom/afwsamples/testdpc/search/PreferenceCrawler;
    invoke-virtual {v0}, Lcom/afwsamples/testdpc/search/PreferenceCrawler;->doCrawl()Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->insertIndexablePreferences(Ljava/util/List;)V

    .line 156
    return-void
.end method

.method private updateIndexIfNeeded()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->shouldUpdateIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->updateIndex()V

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sIndexed:Z

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public insertIndexablePreferences(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferenceIndexList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    .line 92
    .local v2, "preferenceIndex":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    const-string v3, "preference_index"

    .line 95
    invoke-static {v2}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexTable;->toContentValues(Lcom/afwsamples/testdpc/search/PreferenceIndex;)Landroid/content/ContentValues;

    move-result-object v4

    .line 92
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 96
    nop

    .end local v2    # "preferenceIndex":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    goto :goto_0

    .line 98
    :cond_0
    const-string v1, "INSERT INTO preference_index_fts(preference_index_fts) VALUES(\'rebuild\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 102
    nop

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 102
    throw v1
.end method

.method public lookup(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "targetFragments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation

    .line 111
    .local p2, "targetFragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->updateIndexIfNeeded()V

    .line 112
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 115
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 116
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->buildLookupSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v3, "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-static {v1}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexTable;->fromCursor(Landroid/database/Cursor;)Lcom/afwsamples/testdpc/search/PreferenceIndex;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    :cond_0
    nop

    .line 123
    if-eqz v1, :cond_1

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_1
    return-object v3

    .line 123
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_2
    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "db"
        }
    .end annotation

    .line 76
    const-string v0, "CREATE TABLE preference_index (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,title TEXT NOT NULL,fragment_class TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v0, "CREATE VIRTUAL TABLE preference_index_fts USING fts4 (content=\'preference_index\', title);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "oldVersion",
            "newVersion"
        }
    .end annotation

    .line 81
    return-void
.end method
