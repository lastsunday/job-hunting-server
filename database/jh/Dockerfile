FROM liquibase/liquibase:4.21.1
RUN lpm add mysql --global
ADD src/main/resources /liquibase/changelog

CMD ["sh", "-c", "echo \"clearChecksums\"; \
                    docker-entrypoint.sh \
                        --classpath=/liquibase/changelog \
                        --changelog-file=${CHANGELOG_FILE:=db/changelog/db.changelog-master.xml} \
                        --log-level=warning \
                        --username=${DB_USERNAME} \
                        --password=${DB_PASSWORD} \
                        --driver=\"com.mysql.cj.jdbc.Driver\" \
                        --database-changelog-table-name=\"jh_db_changelog\" \
                        --database-changelog-lock-table-name=\"jh_db_changelog_lock\" \
                        --url=\"jdbc:mysql://${DB_HOST}:${DB_PORT}/${DB_NAME}?characterEncoding=utf8&autoReconnect=true&useSSL=true\" \
                         clearChecksums; \
                    echo ACTION=${ACTION}; docker-entrypoint.sh \
                        --classpath=/liquibase/changelog \
                        --changelog-file=${CHANGELOG_FILE:=db/changelog/db.changelog-master.xml} \
                        --log-level=warning \
                        --username=${DB_USERNAME} \
                        --password=${DB_PASSWORD} \
                        --driver=\"com.mysql.cj.jdbc.Driver\" \
                        --database-changelog-table-name=\"jh_db_changelog\" \
                        --database-changelog-lock-table-name=\"jh_db_changelog_lock\" \
                        --url=\"jdbc:mysql://${DB_HOST}:${DB_PORT}/${DB_NAME}?characterEncoding=utf8&autoReconnect=true&useSSL=true\" \
                         ${ACTION:=update} \
                        "]
