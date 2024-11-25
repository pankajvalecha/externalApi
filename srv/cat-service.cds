using {SystemConfigurationService as external} from './external/SystemConfigurationService';
using my.bookshop as db from '../db/schema';

service CatalogServiceExternalAPI {
   
    entity BusinessSystems as projection on external.BusinessSystems;
    @cds.persistence: { table, skip: false }
    entity SystemObjects as projection on external.SystemObjects;
    @cds.persistence: { table, skip: false }
    entity SystemTypes as projection on external.SystemTypes;

}

service RegularCapApi {
    entity Books as projection on db.Books;
}

